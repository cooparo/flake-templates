{
  description = "Paro's flake templates";

  inputs = {
    official-templates.url = "github:NixOS/templates";
  };

  outputs = { self, ... }: {
    templates = {

     basic = {
        path = ./basic;
        description = "Basic template";
      };

      defaultTemplate = self.templates.basic;
    };
  };
}
