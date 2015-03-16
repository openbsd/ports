# $OpenBSD: Makefile,v 1.5 2015/03/16 18:07:44 naddy Exp $

COMMENT =		object-oriented input system

V =			1.3
DISTNAME =		ois-v${V:S/./-/g}
PKGNAME =		ois-${V}
REVISION =		1

SHARED_LIBS =		OIS	0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.wreckedgames.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# zlib/libpng
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 m stdc++ xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=wgois/}
EXTRACT_SUFX =		.zip

# needs libtoolize
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include"

AUTOCONF_VERSION =	2.60
AUTOMAKE_VERSION =	1.10

NO_TEST =		Yes

post-extract:
	find ${WRKSRC} -type f | xargs perl -pi -e 's/\015//g'

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh ./bootstrap

.include <bsd.port.mk>
