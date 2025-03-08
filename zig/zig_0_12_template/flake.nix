{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for zig 12";
      path = ./zig_0_12;
      welcomeText = ''
        Initialized Zig 12 shell
      '';
    };
  };
}

