<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddNotificationableRequest extends FormRequest
{
    public function authorize(): bool
    {
        if (! is_callable($this->input('notificationable_type').'::find')) {
            return false;
        }

        $notificationable = $this->input('notificationable_type')::find($this->input('notificationable_id'));

        return $notificationable && $this->user()->can('receiveNotifications');
    }

    public function rules(): array
    {
        return [
            'notificationable_type' => 'required|string|in:App\Models\Individual,App\Models\Organization,App\Models\RegulatedOrganization',
            'notificationable_id' => 'required|integer|exists:'.$this->input('notificationable_type').',id',
        ];
    }
}
