# pfSense-pkg-zerotier
pfSense package to support zerotier.

## Pre-reqs
1. FreeBSD 12.2 Workstation with pkg, git, and gmake


portsnap fetch extract

## Build
1. `git clone https://github.com/pfsense/FreeBSD-ports.git`
2. add `ALLOW_UNSUPPORTED_SYSTEM=YES` to /etc/make.conf
3. Copy repo files to FreeBSD-ports/net/pfSense-pkg-zerotier
4. Run `make clean ; make package`
5. scp work/pkg/pfSense-pkg-zerotier-0.00.1.txz to pfsense

## Install
1. Run `pkg add https://pkg.opnsense.org/FreeBSD:12:amd64/21.7/latest/All/zerotier-1.8.3.txz`
2. https://pkg.freebsd.org/FreeBSD:12:amd64/quarterly/All/zerotier-1.8.9.pkg
3. Run `pkg add pfsense-pkg-zerotier-0.00.1.txz`

https://pkg.opnsense.org/FreeBSD:12:amd64/21.7/latest/All/zerotier-1.8.3.txz

 mv pfSense-pkg-zerotier/ FreeBSD-ports/net/

## ToDo
- [ ] Re-write controller functionality to match API changes
- [ ] Interface creation
