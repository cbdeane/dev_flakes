{
  outputs = { self }: {

    templates.default = {
      description = "Developer shell flake for rust";
      path = ./rustc_cargo;
      welcomeText = ''
        Initialized Rust developer shell
      '';
    };
  };
}

