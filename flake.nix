{
  description = "Paro's flake templates";

  outputs =
    { self, ... }:
    {
      templates = {

        basic = {
          path = ./basic;
          description = "Basic template";
        };
        python = {
          path = ./python;
          description = "Python template";
        };
        rust = {
          path = ./rust;
          description = "Rust template";
        };

      };
      defaultTemplate = self.templates.basic;
    };
}
