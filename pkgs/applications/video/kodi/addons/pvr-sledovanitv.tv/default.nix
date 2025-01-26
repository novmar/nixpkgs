{ lib, rel, buildKodiBinaryAddon, fetchFromGitHub }:
buildKodiBinaryAddon rec {
  pname = "pvr-sledovanitv.cz";
  namespace = "pvr.sledovanitv.cz";
  version = "22.2.0";

  src = fetchFromGitHub {
    owner = "palinek";
    repo = "pvr.sledovanitv.cz";
    rev = "${version}-${rel}";
    sha256 = "sha256-BG5mGD674gvjUSdydu4g3F/4GH53gkJoKMDuvaFNi6k=";
  };

  meta = with lib; {
    homepage = "https://github.com/palinek/sledovanitv.cz";
    description = "Kodi's sledovanitv.cz PVR addon";
    platforms = platforms.all;
    license = licenses.gpl2Only;
    maintainers = teams.kodi.members;
  };
}
