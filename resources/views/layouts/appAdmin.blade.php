<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
   @include('includes.head')
</head>
<body>
    <div id="app">
      
        <header class="">
       @include('includes.headerAdmin')
   </header>
        <main class="py-4">
            @yield('content')
        </main>
        <header class="">
       @include('includes.footer')
   </header>
    </div>



</body>
</html>
