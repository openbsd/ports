# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:30 sthen Exp $

COMMENT =		link advertisement (LLDP/CDP etc) daemon

CATEGORIES =		net

DISTNAME =		ladvd-1.1.1
MASTER_SITES =		https://github.com/sspans/ladvd/files/1065794/
HOMEPAGE =		http://blinkenlights.nl/software/ladvd/
REVISION =		1

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-user=_ladvd --with-chroot-dir=/var/empty

WANTLIB =		c event pcap

# enables regression tests;  GNU configure script enables them
# only if devel/check is available at build time
BUILD_DEPENDS =		devel/check

.include <bsd.port.mk>
