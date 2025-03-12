{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for python 3.14";
      path = ./python_3_14;
      welcomeText = ''
        Initialized Python 3.14 developer shell
      '';
    };
  };
}
