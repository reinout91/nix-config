#
# Mainly used for online accounts
#

{ lib, pkgs, vars, host, ... }:

{
  config = lib.mkIf (host.hostName == "work") {
    environment.systemPackages = with pkgs; [
    ];

    home-manager.users.${vars.user} = {
    };
  };
}
