{
  description = "Paro's flake templates";

  outputs = { self, ... }: {
    templates = {

     basic = {
        path = ./basic;
        description = "Basic template";
      };

    };
    defaultTemplate = self.templates.basic;
  };
}
