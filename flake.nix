{
  description = "Paro's flake templates";

  inputs = {
    official-templates.url = "github:NixOS/templates";
  };

  outputs = { self, ... }: {
    templates = {

     basic = {
        path = ./basic-template;
        description = "Basic template";
      };
    };

    defaultTemplate = self.templates.basic;
  };
}
