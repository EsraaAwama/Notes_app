import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/addnote_cubit.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/views/widget/custom_bottom.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> form = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode
      .disabled; //مشان اظهرلو ايرور في حال دخل شي غلط و disabled يعني مارح يشتغل هلق
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustumTextField(
            hintText: 'title',
            onSaved: (Value) {
              title = Value;
            },
          ),

          SizedBox(height: 16),

          CustumTextField(
            hintText: 'content',
            maxLines: 5,
            onSaved: (Value) {
              subtitle = Value;
            },
          ),
          SizedBox(height: 32),

          CustomBotton(
            onTap: () {
              if (form.currentState!.validate()) {
                //ليقوم بفتح كل الحقول والتحقق من شروط الـ validator.
                form.currentState!.save(); //للحفظ و لتنفيذ دوال الـ onSaved

                // var noteModel = NoteViewModel(
                //   title: title!,
                //   subtitle: subtitle!,
                //   date: DateTime.now().toString(),
                //   color: Colors.blue.value,
                // );
                // BlocProvider.of<AddnoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode
                    .always; //يظهر الخطأ فورًا وبشكل دائم، حتى قبل أن يكتب المستخدم أي شيء في الحقل.
                setState(() {});
              }
            },
            butonName: 'Add',
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
