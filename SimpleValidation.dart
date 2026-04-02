final _formKey = GlobalKey<FormState>();

ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      print("Valid");
    }
  },
  child: Text("Submit"),
)
