# $OpenBSD: Makefile,v 1.2 2019/08/09 13:33:37 bcallah Exp $

COMMENT =	open-source version of the classic Jazz Jackrabbit games
DISTNAME =	openjazz-20190120
REVISION =	0
CATEGORIES =	games x11

# Upstream does make real tarballs.
# Will switch to those next release.
GH_ACCOUNT =	AlisterT
GH_PROJECT =	openjazz
GH_COMMIT =	9e6ed1f4e1ed8581e49686fd64e69cfcd37bf558

HOMEPAGE =	http://www.alister.eu/jazz/oj/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL c m

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/sdl

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

do-gen:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -fi

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/menu/mainmenu.cpp

.include <bsd.port.mk>
