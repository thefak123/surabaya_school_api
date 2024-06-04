<div>
    <form method="post" class="mt-6 space-y-6">
        @csrf
        @method('patch')

        <div>
            <x-input-label for="api-key" :value="__('API KEY')" />
            <x-text-input id="api-key" name="api-key" type="text" class="mt-1 block w-full" :value="old('name', $user->API_KEY)" required autofocus autocomplete="name" disabled />
        </div>

        <div class="flex items-center gap-4">
            {{-- <x-primary-button>{{ __('Generate') }}</x-primary-button> --}}
            <button type="button" wire:click="regenerateApiKey" class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">Regenerate</button>

            {{-- @if (session('status') === 'profile-updated')
                <p
                    x-data="{ show: true }"
                    x-show="show"
                    x-transition
                    x-init="setTimeout(() => show = false, 2000)"
                    class="text-sm text-gray-600 dark:text-gray-400"
                >{{ __('Saved.') }}</p>
            @endif --}}
        </div>
    </form>
</div>
