with import <nixpkgs> {};
let
  pythonEnv = python38.withPackages (ps: [
    ps.numpy
    ps.toolz
    ps.matplotlib
    ps.scipy
    ps.tqdm
    ps.scikit-learn
    ps.pytorch
  ]);
in mkShell {
  packages = [
    pythonEnv

    black
    mypy

    libffi
    openssl
  ];
}