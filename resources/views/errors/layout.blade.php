<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ asset('css/vendor.css') }}">
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
    <style>
        html,
        body {
            background-color: #ccc;
        }
        body {
            text-align: center;
            text-shadow: 0 1px 3px rgba(0,0,0,.5);
        }
        .site-wrapper {
            display: table;
            width: 100%;
            height: 100%; /* For at least Firefox */
            min-height: 100%;
            -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
            box-shadow: inset 0 0 100px rgba(0,0,0,.5);
        }
        .site-wrapper-inner {
            display: table-cell;
            vertical-align: middle;
        }
    </style>

</head>

<body>

    <div class="site-wrapper">
        <div class="site-wrapper-inner">
              @yield('content')
        </div>
    </div>

</body>
</html>