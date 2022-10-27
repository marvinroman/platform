<tr>
    <td>
        @if ($account->isPublishable())
            <a
                href="{{ localized_route($account->getRoutePrefix() . '.show', $account) }}"><strong>{{ $account->name }}</strong></a>
        @else
            <strong>{{ $account->name }}</strong>
        @endif
        <br />
        <a href="mailto:{{ $account->contact_person_email }}">{{ $account->contact_person_email }}</a>
    </td>
    <td>
        {{ $account instanceof App\Models\RegulatedOrganization ? Str::ucfirst(__('regulated-organization.singular_name')) : Str::ucfirst(__('organization.singular_name')) }}
    </td>
    <td>
        @if ($account->checkStatus('draft') && !$account->isPublishable())
            {{ __('Draft') }}
        @elseif($account->checkStatus('draft') && $account->isPublishable())
            {{ __('Ready to publish') }}
        @elseif($account->checkStatus('published'))
            {{ __('Published') }}
        @endif
    </td>
    <td>
        @if ($account->checkStatus('suspended'))
            <span class="flex items-center gap-2 text-red-8">
                <x-heroicon-o-no-symbol class="h-5 w-5" role="presentation" aria-hidden="true" /> <span
                    class="font-semibold">{{ __('Suspended') }}</span>
            </span>
        @else
            @if ($account->checkStatus('pending'))
                {{ __('Pending approval') }}
            @elseif($account->checkStatus('approved'))
                {{ __('Approved') }}
            @endif
        @endif
    </td>
    <td>
        @if ($account->checkStatus('pending'))
            <form wire:submit.prevent="approve">
                <button class="secondary">{{ __('Approve') }}</button>
            </form>
        @else
            @if (!$account->checkStatus('suspended'))
                <form wire:submit.prevent="suspend">
                    <button class="secondary destructive">
                        <x-heroicon-o-no-symbol class="h-5 w-5" role="presentation" aria-hidden="true" />
                        {{ __('Suspend') }}
                    </button>
                </form>
            @else
                <form wire:submit.prevent="unsuspend">
                    <button class="secondary">{{ __('Unsuspend') }}</button>
                </form>
            @endif
        @endif
    </td>
</tr>
