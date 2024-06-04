<x-app-layout>
    <style>
        iframe {
            width: 100%;
            height: 100vh;
            border: none;
        }
    </style>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    <div class="content">
        <iframe src="{{ url('docs/index.html') }}"></iframe>
    </div>
    {{-- {!! file_get_contents(public_path('docs/index.html')) !!} --}}

</x-app-layout>
