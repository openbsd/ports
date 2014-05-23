# $OpenBSD: Makefile,v 1.15 2014/05/23 12:23:05 sthen Exp $

COMMENT =		music system for hackathons
DISTNAME =		hgd-0.5.3
REVISION =		1

CATEGORIES =		audio net
HOMEPAGE =		https://github.com/vext01/hgd/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# python flavor is not linked yet
FLAVORS =		python
FLAVOR ?=

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c config crypto ssl sqlite3 tag tag_c

MASTER_SITES =		https://github.com/downloads/vext01/hgd/

CONFIGURE_STYLE =	gnu

RUN_DEPENDS =		x11/mplayer
LIB_DEPENDS =		devel/libconfig \
			audio/taglib

.if ${FLAVOR:Mpython}
LIB_DEPENDS +=		${MODPY_LIB_DEPENDS}
WANTLIB +=		${MODPY_WANTLIB}
WANTLIB +=		m pthread util
MODULES =		lang/python
CONFIGURE_ARGS +=	--with-python=${MODPY_VERSION}
PKG_ARGS +=		-Dpython=1
.else
CONFIGURE_ARGS +=	--without-python
PKG_ARGS +=		-Dpython=0
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
