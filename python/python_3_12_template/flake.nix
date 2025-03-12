{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for python 3.12";
      path = ./python_3_12;
      welcomeText = ''
        Initialized Python 3.12 developer shell
      '';
    };
  };
}
