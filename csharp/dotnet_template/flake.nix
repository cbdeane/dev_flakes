{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for dotnet 9.0";
      path = ./dotnet;
      welcomeText = ''
        Initialized dotnet developer shell
      '';
    };
  };
}

