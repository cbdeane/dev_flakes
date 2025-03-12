{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for python 3.11";
      path = ./python_3_11;
      welcomeText = ''
        Initialized Python 3.11 developer shell
      '';
    };
  };
}
