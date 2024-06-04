<?php

namespace App\Livewire;

use App\Models\User;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Livewire\Attributes\On; 
class ApiKeyForm extends Component
{
    public $user;

    public function render()
    {
        return view('livewire.api-key-form');
    }

    public function regenerateApiKey(){
        $id = Auth::id();
        $new_api_key = substr(md5(mt_rand()), 0, 20);
        $user = User::find($id);
        $user->API_KEY = $new_api_key;
        $user->save();
        $this->dispatch('refresh');
    }

    #[On('refresh')]
    public function refresh(){

    }

}
