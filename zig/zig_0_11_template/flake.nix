{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for zig 11 LTS";
      path = ./zig_0_11;
      welcomeText = ''
        Initialized zig 11 developer shell
      '';
    };
  };
}

