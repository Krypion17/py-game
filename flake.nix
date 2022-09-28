{
  description = "Python game";

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = 
    with import nixpkgs { system = "x86_64-linux"; };
    python310Packages.buildPythonApplication {
      pname = "idk";
      version = "1.0.0";

      src = self;

      propagatedBuildInputs = [
        python310Packages.keyboard
      ];
    };
  };
}
