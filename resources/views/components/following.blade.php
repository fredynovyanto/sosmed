@foreach ($users as $user)
    <x-card>
        <div class="flex item-center">
            <div class="flex-shrink-0 mr-3">
                <img class="w-10 h-10 rounded-full" src="https://i.pravatar.cc/100" alt="{{$user->name}}">
            </div>
            <div>
                <a href="{{route('profile', $user->username)}}" class="font-semibold">
                    {{$user->name}}
                    @if (request()->routeIs('explore'))
                        <x-follow-button :user="$user"/>
                    @endif
                </a>
                <div class="text-sm text-gray-600">
                    @if ($user->pivot)
                        {{$user->pivot->created_at->diffForHumans()}}
                    @endif
                </div>
            </div>
        </div>
    </x-card>
@endforeach