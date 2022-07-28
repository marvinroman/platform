<?php

namespace App\Http\Requests;

use App\Enums\MeetingType;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Enum;
use Illuminate\Validation\Validator;

class UpdateIndividualCommunicationAndConsultationPreferencesRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()->can('update', $this->individual);
    }

    public function rules(): array
    {
        return [
            'preferred_contact_person' => 'required|in:me,support-person',
            'email' => 'nullable|email',
            'phone' => 'required_if:vrs,true|nullable|phone:CA',
            'vrs' => 'nullable|boolean',
            'support_person_name' => 'required_if:preferred_contact_person,support-person|nullable|string|exclude_if:preferred_contact_person,me',
            'support_person_email' => 'nullable|email',
            'support_person_phone' => 'required_if:support_person_vrs,true|nullable|phone:CA|exclude_if:preferred_contact_person,me',
            'support_person_vrs' => 'nullable|boolean|exclude_if:preferred_contact_person,me',
            'preferred_contact_method' => 'required|in:email,phone',
            'meeting_types' => 'required|array|min:1',
            'meeting_types.*' => [new Enum(MeetingType::class)],
        ];
    }

    /**
     * Configure the validator instance.
     *
     * @param  Validator  $validator
     * @return void
     */
    public function withValidator(Validator $validator)
    {
        $validator->sometimes('preferred_contact_method', 'in:email', function ($input) {
            return $input->preferred_contact_person == 'me' && ! is_null($input->email) && is_null($input->phone) ||
                $input->preferred_contact_person == 'support-person' && ! is_null($input->support_person_email) && is_null($input->support_person_phone);
        });

        $validator->sometimes('preferred_contact_method', 'in:phone', function ($input) {
            return  $input->preferred_contact_person == 'me' && is_null($input->email) && ! is_null($input->phone) ||
                $input->preferred_contact_person == 'support-person' && is_null($input->support_person_email) && ! is_null($input->support_person_phone);
        });
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages(): array
    {
        return [
            'support_person_name.required_if' => __('Your support person’s name is required if they are your preferred contact person.'),
        ];
    }
}