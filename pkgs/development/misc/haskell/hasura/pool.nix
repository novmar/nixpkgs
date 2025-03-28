# This has been automatically generated by the script
# ./update.sh.  This should not be changed by hand.
{
  mkDerivation,
  base,
  fetchgit,
  hashable,
  hspec,
  lib,
  monad-control,
  stm,
  time,
  transformers,
  transformers-base,
  vector,
}:
mkDerivation {
  pname = "resource-pool";
  version = "0.2.3.2";
  src = fetchgit {
    url = "https://github.com/hasura/pool.git";
    sha256 = "02wa32fl5wq5fk59id54xmxiqjl564r4rhsc79xsgf2j2spj0v94";
    rev = "dc56753338e7b61220a09bed0469c6dcc5e9fb52";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    base
    hashable
    monad-control
    stm
    time
    transformers
    transformers-base
    vector
  ];
  testHaskellDepends = [
    base
    hspec
  ];
  homepage = "https://github.com/bos/pool";
  description = "High-performance striped resource pooling implementation";
  license = lib.licenses.bsd3;
  maintainers = with lib.maintainers; [ lassulus ];
}
