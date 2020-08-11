#$OpenBSD: Makefile,v 1.1.1.1 2020/08/11 14:54:11 landry Exp $

COMMENT =	hardware probe tool
CATEGORIES =	sysutils

PKGNAME =	hw-probe-1.6beta

GH_ACCOUNT =	linuxhw
GH_PROJECT =	hw-probe
GH_TAGNAME =	1.6-beta

MAINTAINER =	David Dahlberg <david+bsd@dahlberg.cologne>

# BSD-4 or LGPLv2.1+
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	sysutils/dmidecode \
		sysutils/smartmontools \
		sysutils/usbutil \
		sysutils/lscpu \
		net/curl

FAKE_FLAGS =	prefix=${PREFIX} tool_dir=${DESTDIR}${PREFIX}/sbin

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
