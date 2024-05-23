# direnv-template
simple nix direnv template/example

## Usage

### Prerequisite

#### **Nix**

| System                                         | Single User | Multiple User | Command                                                             |
| ---------------------------------------------- | ----------- | ------------- | ------------------------------------------------------------------- |
| **Linux**                                      | ✅          | ✅            | [Single User](#linux-single-user) • [Multi User](#linux-multi-user) |
| **Darwin** (MacOS)                             | ❌          | ✅            | [Multi User](#darwin-multi-user)                                    |
| [**More...**](https://nixos.org/download.html) |             |               |                                                                     |

##### Linux Single User

```console
sh <(curl -L https://nixos.org/nix/install) --daemon
```

##### Linux Multi User

```console
sh <(curl -L https://nixos.org/nix/install) --no-daemon
```

##### Darwin Multi User

```console
sh <(curl -L https://nixos.org/nix/install)
```

#### Enable `experimental-features`

In general installation of nix, the nix configuration is located in `~/.config/nix/nix.conf`.
You **MUST** be set the `experimental-features` before use [this configuration](https://github.com/x-di/direnv-template).

```cfg
experimental-features = nix-command flakes
```

#### Enable `direnv` and `nix-direnv`
```cfg
configuration.nix | home-manager module
programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
```

### Setup

- Clone [this repository](https://github.com/x-di/direnv-template)

```console
// with SSH
git clone git@github.com:x-di/direnv-template

// OR with HTTP
git clone https://github.com/x-di/direnv-template

```

- Change directory to `direnv-template`

```console
cd direnv-template
```

- Change directory to `bun`, or `golang`, or `nodejs/20`, or `nodejs/22`, or `php/80`, or `php/81`, or `php/82`, or `php/83`

- Grants direnv permission to load the given .envrc or .env file

```console
direnv allow
```
- Done 🚀🎉