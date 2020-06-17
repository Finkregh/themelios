{ config, pkgs, ... }:
# just an example top-level "configuration.nix" file within the themelios scheme
{
imports = [];

i18n = {
consoleFont = "Lat2-Terminus16";
consoleKeyMap = "us";
defaultLocale = "en_US.UTF-8";
};

time.timeZone = "UTC";

programs.mtr.enable = true;
programs.bash.enableCompletion = true;

networking.hostName = "bazaa";


nixpkgs.config.allowUnfree = true;


  users.extraUsers.oluf = {
    isNormalUser = true;
    group = "oluf";
    description = "";
    createHome = true;
    home= "/home/oluf";
  };


  services.openssh.enable = true;
  services.locate.enable = true;
  services.avahi.enable = true;

}
