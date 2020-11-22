#$OpenBSD: Makefile,v 1.3 2020/11/22 13:41:11 kevlo Exp $

COMMENT =	hardware probe tool
CATEGORIES =	sysutils

PKGNAME =	hw-probe-1.6beta
REVISION =	1

GH_ACCOUNT =	linuxhw
GH_PROJECT =	hw-probe
GH_TAGNAME =	1.6-beta

MAINTAINER =	David Dahlberg <david+bsd@dahlberg.cologne>

# BSD-4 or LGPLv2.1+
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	net/curl \
		sysutils/lscpu \
		sysutils/pciutils \
		sysutils/smartmontools \
		sysutils/usbutil \
		sysutils/usbutils

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
RUN_DEPENDS +=	sysutils/dmidecode
.endif

FAKE_FLAGS =	prefix=${PREFIX} tool_dir=${DESTDIR}${PREFIX}/sbin

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
