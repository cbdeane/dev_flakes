{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for dotnet 9.0";
      path = ./dotnet_9;
      welcomeText = ''
        Initialized dotnet developer shell
      '';
    };
  };
}

