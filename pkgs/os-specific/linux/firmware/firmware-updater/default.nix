{ lib
, flutter2
, fetchFromGitHub
}:

flutter2.buildFlutterApplication {
  pname = "firmware-updater";
  version = "unstable";

  pubspecLockFile = ./pubspec.lock;
  depsListFile = ./deps.json;
  vendorHash = "sha256-kKfe+7obb2fihrca+mjCM2+51wNkbPLEPFLpXzK5Wvc=";

  src = fetchFromGitHub {
    owner = "canonical";
    repo = "firmware-updater";
    rev = "a51817a2551e29895352618a91df9cf93d944af1";
    sha256 = "6uhks6a9JcyIC5o0VssqfBlE4pqKiQ7d3KOb6feNTvU=";
    fetchSubmodules = true;
  };

  meta = with lib; {
    description = "Firmware Updater for Linux";
    homepage = "https://github.com/canonical/firmware-updater";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ mkg20001 ];
    platforms = platforms.linux;
  };
}
