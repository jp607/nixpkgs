with import <nixpkgs> {};


with stdenv.lib;
stdenv.mkDerivation rec 
{
pname = "e16";
version = "1.0.22";

src = fetchurl
{
url = "mirror://sourceforge/enlightenment/e16-${version}.tar.gz";
sha256 = "0rsadnvi6z17i6qpyirfmdp3g2ylw5wygjxgfh4h5b3718d30zdh";
};

nativeBuildInputs = [pkgconfig];

buildInputs =
[
imlib2 freetype xorg.libXft xorg.libXinerama xorg.libXrandr xorg.libXcomposite xorg.libXext
];

meta = with stdenv.lib;
{
description = "The e16 Window Manager";
homepage = "https://www.enlightenment.org/e16";
license = "BSD-Style";


};

}
