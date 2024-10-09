# Steam Deck NixOS binary cache

This repository contains workflows to build custom packages from
[Jovian-NixOS](https://github.com/Jovian-Experiments/Jovian-NixOS) and push them
to a binary cache on a regular basis.

A complete NixOS system is built, including Valve's kernel and Mesa forks among
other things.

## Usage

Add https://hacker1024-jovian.cachix.org to your substituter list. The public
key is available on the website.

This cache uses Cachix's free plan on my personal account, so it may not be able
to contain everything all the time. If this is an issue, I recommend forking the
project and using a cache of your own.

## Revisions

The following revisions are built on a daily basis. Note that these may
not always succeed.

### Nixpkgs

- `nixos-unstable`
- `nixos-24.05`

### Jovian-NixOS

- `development`