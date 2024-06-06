@php
    use Illuminate\Support\Facades\Request;
    $hostName =  Request::getHost();
    $port =Request::getPort();
@endphp

<x-app-layout>
    <style>
        iframe {
            width: 100%;
            height: 100vh;
            border: none;
        }
    </style>
    
    <div class="content">
        <iframe src={{"http://". $hostName . ":" . $port . "/docs/api"}} width="800" height="600" frameborder="0"></iframe>
    </div>
    {{-- {!! file_get_contents(public_path('docs/index.html')) !!} --}}
    
    <script src="{{ asset('vendor/scribe/js/theme-default.script.js') }}"></script>

</x-app-layout>
