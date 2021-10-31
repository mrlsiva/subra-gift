<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
   @include('includes.head')
</head>
<body>
    <div id="app">
      
        <header class="row">
       @include('includes.header')
   </header>
        <main class="mt-5">
            @yield('content')
        </main>
        <header class="">
       @include('includes.footer')
   </header>
    </div>



</body>
</html>
