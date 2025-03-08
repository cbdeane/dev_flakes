{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for clang";
      path = ./clang;
      welcomeText = ''
        Initialized clang developer shell
      '';
    };
  };
}

