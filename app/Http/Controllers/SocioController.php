<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Socio;

class SocioController extends Controller
{
    public function index(){
        return Socio::paginate();
    }

    public function search($id){
        return Socio::find($id);
    }

    public function store(Request $request){
        $socio = new Socio();
        $socio->name = $request->input('name');
        $socio->birth = $request->input('birth');
        $socio->address = $request->input('address');
        $socio->city = $request->input('city');
        $socio->dni = $request->input('dni');
        $socio->type = $request->input('type');

        $socio->save();

        return json_encode(['msg' => 'Nuevo socio agregado']);
    }   

    public function edit(Request $request, $id){
        $name = $request->input('name');
        $birth = $request->input('birth');
        $address = $request->input('address');
        $city = $request->input('city');
        $dni = $request->input('dni');
        $type = $request->input('type');

        
        Socio::where('id',$id)->update(
            [
                'name' => $name,
                'birth' => $birth,
                'address' => $address,
                'city' => $city,
                'dni' => $dni,
                'type' => $type,
            ]
        );

        return json_encode(['msg' => 'Socio actualizado']);
    }  

    public function delete($id){
        Socio::destroy($id);

        return json_encode(['msg' => 'Socio eliminado']);
    }
}
