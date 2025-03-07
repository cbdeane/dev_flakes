  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for node js 22 LTS";
      path = "./nodejs_22/";
      welcomeText = ''
        Initialized Node JS LTS 22 developer shell
      '';
  };
}

