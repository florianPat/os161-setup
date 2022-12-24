# OPS-CLASS

[ops-class.org](https://ops-class.org) or also known as "hack the kernel" is a harvard course about operating systems and doing kernel development.
This repo is a docker setup to get started on the assignments.

### Get Started

1. Clone this repo :)
2. `resources/scripts/setup.sh` gets the dev environment started
3. Have fun!

### Binaries

- kern-conf: Configure a kernel with an environment
- bmake-depend: Compile dependencies of configured kernel
- bmake: Compile configured kernel and install it into the root directory
- bmake-userspace: Compile and install the userspace programs into the root directory
- sys161: Run the sys161 simulator with the compiled kernel
