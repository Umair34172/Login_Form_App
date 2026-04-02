TextEditingController emailController = TextEditingController();

TextFormField(
  controller: emailController,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return "Enter email";
    }
    return null;
  },
)
