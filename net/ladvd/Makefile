# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:48 espie Exp $

COMMENT =		link advertisement (LLDP/CDP etc) daemon

DISTNAME =		ladvd-1.0.4
CATEGORIES =		net

HOMEPAGE =		http://blinkenlights.nl/software/ladvd/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--with-user=_ladvd --with-chroot-dir=/var/empty

WANTLIB =		c event pcap

# enables regression tests;  GNU configure script enables them
# only if devel/check is available at build time
BUILD_DEPENDS =		devel/check

.include <bsd.port.mk>
