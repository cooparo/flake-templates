{
  description = "Paro's flake templates";

  inputs = {
    official-templates.url = "github:NixOS/templates";
  };

  outputs = { self, ... }: {
    templates = {
    defaultTemplate = self.templates.basic;

     basic = {
        path = ./basic;
        description = "Basic template";
      };
    };
  };
}
