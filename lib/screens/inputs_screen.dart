import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  final Map<String,String> formValues ={
    'firt_name': 'Genesis',
    'last_name': 'Pinto',
    'email'    : 'genesisgps@gmail.com',
    'password'  : '123456',
    'role'     : 'Admin',

  };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key:myFormKey,
            child: Column(
              children:  [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del Usuario',helperText: 'solo letras',icon: Icons.assignment_ind_outlined, suffixIcon: Icons.group_outlined, formProperty: 'firt_name', formValues: formValues,),
                const SizedBox(height: 30,),
                 CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario',helperText: 'solo letras',icon: Icons.assignment_ind_outlined, suffixIcon: Icons.group_outlined, formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(keyboardType: TextInputType.emailAddress, labelText: 'Correo', hintText: 'example@gmail.com',helperText: 'solo letras',icon: Icons.email_outlined, suffixIcon: Icons.group_outlined, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(obscureText: true, labelText: 'Contraseña', hintText: '***',helperText: 'solo letras',icon: Icons.remove_red_eye_outlined, suffixIcon: Icons.group_outlined, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButton(
                  items:const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'))
                  ], 
                  onChanged:((value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  })),



                ElevatedButton(
                 onPressed: (() {
                  // instruccion para quitar el teclado cuando se presione 'guardar'
                  FocusScope.of(context).requestFocus(FocusNode());

                  if(!myFormKey.currentState!.validate()){
                    print('Formulario no valido');
                    return;
                  }
                   print(formValues);
                 }),
                 child:const  SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar'))) ,)
                 
              ],
            ),
          ),
        ) ,)
    );
  }
}

