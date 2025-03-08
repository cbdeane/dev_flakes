{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for Go 1.23";
      path = ./go_1_23;
      welcomeText = ''
        Initialized Go 1.23 developer shell
      '';
    };
  };
}

