{ stdenv, fetchFromGitHub, rustPlatform, cargo, pkgconfig, gtkLibs, dbus }:

#stdenv.mkDerivation rec {
#  name = "systemd-manager-0.4.5";

#  src = fetchFromGitHub {
#    owner = "mmstick";
#    repo = "systemd-manager";
#    rev = "bdad692e6ed6c8eda525202aa1ff55d4a3adc3d3";
#    sha256 = "1x3g756jpkfw89k10v37zp9jy8p0bsggqf94bv2q0cnpiviqb1d5";
#  };
#
#  buildInputs = [
#    cargo pkgconfig dbus
#    gtkLibs.cairo gtkLibs.glib gtkLibs.pango gtkLibs.atk gtkLibs.gdk_pixbuf gtkLibs.gdk
#  ];
#
#  meta = {
#    description = "A systemd service manager";
#    longDescription = ''
#      A systemd service manager
#    '';
#    homepage = https://github.com/mmstick/systemd-manager;
#    license = stdenv.lib.licenses.gpl3;
#    maintainers = [ stdenv.lib.maintainers.havvy ];
#    platforms = stdenv.lib.platforms.linux;
#  };
#}

rustPlatform.buildRustPackage rec {
  name = "systemd-manager-0.4.5";

  src = fetchFromGitHub {
    owner = "mmstick";
    repo = "systemd-manager";
    rev = "bdad692e6ed6c8eda525202aa1ff55d4a3adc3d3";
    sha256 = "1x3g756jpkfw89k10v37zp9jy8p0bsggqf94bv2q0cnpiviqb1d5";
  };

  depsSha256 = "1lbcpvp7xhyl96w7jfd18w6py60nwllr93jna5j33zvnip61cpf5";

  meta = {
    description = "A systemd service manager";
    longDescription = ''
      A systemd service manager
    '';
    homepage = https://github.com/mmstick/systemd-manager;
    license = stdenv.lib.licenses.gpl3;
    maintainers = [ stdenv.lib.maintainers.havvy ];
    platforms = stdenv.lib.platforms.linux;
  };
}