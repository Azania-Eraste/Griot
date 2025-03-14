import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileSettingsPage extends StatefulWidget {
  final Function(String, String, String, DateTime) onSave;

  ProfileSettingsPage({required this.onSave});

  @override
  _ProfileSettingsPageState createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = 'Elizabeth';
  String _lastName = 'Taylor';
  String _phoneNumber = '123-456-7890';
  DateTime? _birthday;
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    backgroundColor: Colors.grey,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.edit, color: Colors.brown),
                      onPressed: _pickImage,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextFormField(
                initialValue: _lastName,
                decoration: InputDecoration(labelText: 'Nom'),
                onSaved: (value) {
                  _lastName = value!;
                },
              ),
              TextFormField(
                initialValue: _firstName,
                decoration: InputDecoration(labelText: 'Prenom'),
                onSaved: (value) {
                  _firstName = value!;
                },
              ),
              TextFormField(
                initialValue: _phoneNumber,
                decoration: InputDecoration(labelText: 'Numero'),
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Date d'anniversaire"),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _birthday = pickedDate;
                    });
                  }
                },
                controller: TextEditingController(
                  text: _birthday == null
                      ? 'Set birthday'
                      : _birthday!.toLocal().toString().split(' ')[0],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    widget.onSave(
                        _firstName, _lastName, _phoneNumber, _birthday!);
                    Navigator.pop(context);
                  }
                },
                child: Text('Save changes'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
