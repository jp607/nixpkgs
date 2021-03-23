{stdenv, pkconfig, imlib2, libXft, libXinerama, libXrandr, libXcomposite, fetchurl, dbus, freetype
}:

with stdenv.lib;
stdenv.mkDerivation rec 
{
pname = "e16";
version = "1.0.22";

src = fetchurl
{
url = "mirror://sourceforge/enlightenment/e16-${version}tar.gz";
sha256 = "";
};

nativeBuildInputs = [pkgconfig];

buildInputs =
[
imlib2 freetype libXft libXinerama libXrandr libXcomposite
];

meta = with stdenv.lib;
{
description = "The e16 Window Manager";
homepage = "https://www.enlightenment.org/e16";
license = "BSD-Style";


};

}
