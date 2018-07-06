# $OpenBSD: Makefile,v 1.2 2018/07/06 08:47:58 feinerer Exp $

COMMENT =		exFAT file system through FUSE

V =			1.2.8
GH_ACCOUNT =		relan
GH_PROJECT =		exfat
GH_TAGNAME =		v${V}
DISTNAME =		exfat-fuse-${V}

CATEGORIES =		sysutils

MAINTAINER =		YASUOKA Masahiko <yasuoka@yasuoka.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c fuse

CONFIGURE_STYLE = 	gnu
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    autoreconf -fi

.include <bsd.port.mk>
