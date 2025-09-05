# ndisk - declarative disk management

Describe a systems disk partitioning, raid, encryption, filesystems, or volumes once in json (or nix, coming "soon"), deploy repeatably.


How it (will) work:

Development TODO (this list is not exhaustive):
- Create dev environment
- Create vm testing environment
- Define JSON format
- Create library which can ingest json disk descriptions and turn it into a disk plan
- Create rust wrappers for the libs that know how to partition, filesystem formatetc
  - libparted
  - libcryptsetup
  - mdadm (?)
  - mkfs.* (?)
- Connect the plan to the libs



Heavily inspired by disko! <3

Why ndisk instead of disko:
- currently, disko is essentially a big fancy bash templeter. this makes maintaining it difficult, and results in odd bugs. the maintainers are looking to replace the existing templating system with some other language see https://github.com/nix-community/disko
  - we hope the work here can eventually be leveraged by the disko project
- with ndisk we hope to leverage existing c libraries (ex libparted) by wrapping them in rust, rather than needing to shell out for each operation.
