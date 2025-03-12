{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for python 3.13";
      path = ./python_3_13;
      welcomeText = ''
        Initialized Python 3.13 developer shell
      '';
    };
  };
}
