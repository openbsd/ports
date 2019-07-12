# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:55 sthen Exp $

COMMENT =	Unicorn CPU emulator engine

MODPY_EGG_VERSION =	1.0.1
DISTNAME =	unicorn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://www.unicorn-engine.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# see patches/patch-src_Makefile
BUILD_DEPENDS =		lang/python/${MODPY_DEFAULT_VERSION_2}

USE_GMAKE =		Yes

MAKE_ENV +=		V=1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile

.include <bsd.port.mk>
