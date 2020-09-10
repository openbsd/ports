#$OpenBSD: Makefile,v 1.2 2020/09/10 10:00:46 sthen Exp $

COMMENT =	hardware probe tool
CATEGORIES =	sysutils

PKGNAME =	hw-probe-1.6beta
REVISION =	0

GH_ACCOUNT =	linuxhw
GH_PROJECT =	hw-probe
GH_TAGNAME =	1.6-beta

MAINTAINER =	David Dahlberg <david+bsd@dahlberg.cologne>

# BSD-4 or LGPLv2.1+
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	net/curl \
		sysutils/dmidecode \
		sysutils/lscpu \
		sysutils/pciutils \
		sysutils/smartmontools \
		sysutils/usbutil \
		sysutils/usbutils

FAKE_FLAGS =	prefix=${PREFIX} tool_dir=${DESTDIR}${PREFIX}/sbin

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
