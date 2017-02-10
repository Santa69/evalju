<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Contact;
    class MessageController extends Controller
    {
    //  public function __construct()
    //     {
    //        $this->middleware('auth');
    //   }
      public function index()
      {
          $contacts = Contact::all();
        return view('message', ['contacts' => $contacts]);
      }
      public function getOne($id)
      {
          $contact = Contact::find($id);
        return view('message', ['contact' => $contact]);
        }
        public function formulaire() {
          return view('contact');
        }
        public function insertOne(Request $request){
          $contact = new Contact;
          $contact->name = $request->name;
          $contact->firstname = $request->firstname;
          // $contact-> name = $request->input('name');
          $contact->content = $request->content;
          $contact->created_at = $request->created_at;
          $contact->save();
          flash('Message Send with Succes', 'success');
          return redirect('/home');
        }
        public function deleteOne(Request $request, $id)
        {
        Contact::destroy($id);
        flash('Message Deleted', 'success');
        return redirect('/message');
        }
    }
