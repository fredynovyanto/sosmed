<div class="border-b mb-5">
    <x-container>
        <div class="flex justify-between items-center">
            <div class="flex">
                <a href="{{route('profile', $user->username)}}" class="px-10 py-3 text-center border-r border-l">
                    <div class="text-2xl font-semibold mb-2">{{$user->statuses->count()}}</div>
                    <div class="uppercase text-xs text-gray-500">Status</div>
                </a>
                <a href="{{route('following.index', [$user->username, 'following'])}}" class="px-10 py-3 text-center border-r">
                    <div class="text-2xl font-semibold mb-2">{{$user->follows->count()}}</div>
                    <div class="uppercase text-xs text-gray-500">Following</div>
                </a>
                <a href="{{route('following.index', [$user->username, 'follower'])}}" class="px-10 py-3 text-center border-r">
                    <div class="text-2xl font-semibold mb-2">{{$user->followers->count()}}</div>
                    <div class="uppercase text-xs text-gray-500">Follower</div>
                </a>
            </div>
            <x-follow-button :user="$user"/>
        </div> 
    </x-container>
</div>