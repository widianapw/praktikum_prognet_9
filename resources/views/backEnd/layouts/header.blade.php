<!--Header-part-->
<div id="header">
    <h1><a href="dashboard.html">Laravel Admin</a></h1>
</div>
<!--close-Header-part-->
<!--top-Header-menu-->
@php
    $jum = DB::table('admin_notifications')->where('read_at',NULL)->count();
    $noti = DB::table('admin_notifications')->where('read_at',NULL)->get();
@endphp


</style>
<div id="user-nav" class="navbar navbar-inverse">

    <ul class="nav">
        {{-- <li class=""><a title="" href="{{url('/admin/settings')}}"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li> --}}
        <li class="">
            <a class="dropdown-item" href="#"
               onclick="event.preventDefault();
                document.getElementById('logout-form').submit();">
                <i class="icon icon-share-alt"></i>{{ __('Logout') }}
            </a>

            <form id="logout-form" action="{{ route('admin.logout') }}" {{-- method="POST" --}} style="display: none;">
                @csrf
            </form>

        </li>
        

        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon icon-bell"></i> Notification
            @if($jum != 0)<span class="badge" style="background-color: red;">1</span>@endif <span class="caret"></span></a>

            <ul class="dropdown-menu">
                <li ><a href="/markRead">Mark All As Read</a></li>
                <li id="read" ><a style="color: green;" href="/markRead" >Mark All As Read</a></li>
                @foreach($noti as $notif)
                   <li><a href=""> {{$notif->data}}</a></li>
                @endforeach
            </ul>

        </li>
        
    </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->

{{-- <div id="search">
    <input type="text" placeholder="Search here..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div> --}}
<!--close-top-serch-->