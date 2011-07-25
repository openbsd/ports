# $OpenBSD: Makefile,v 1.5 2011/07/25 23:07:49 edd Exp $

COMMENT =		music system for hackathons
DISTNAME =		hgd-0.4.1

CATEGORIES =		audio net
HOMEPAGE =		https://github.com/vext01/hgd/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# python flavor is not linked yet
FLAVORS =		python
FLAVOR ?=

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c config crypto ssl sqlite3 tag tag_c

MASTER_SITES =		https://github.com/downloads/vext01/hgd/

CONFIGURE_STYLE =	gnu

RUN_DEPENDS =		x11/mplayer
LIB_DEPENDS =		databases/sqlite3 \
			devel/libconfig \
			audio/taglib

.if ${FLAVOR:L:Mpython}
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

NO_REGRESS =		Yes

.include <bsd.port.mk>
