{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for JDK21 LTS";
      path = ./jdk_21;
      welcomeText = ''
        Initialized JDK developer shell
      '';
    };
  };
}

