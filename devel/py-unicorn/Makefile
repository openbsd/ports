# $OpenBSD: Makefile,v 1.2 2019/04/02 03:12:17 jasper Exp $

COMMENT =	Unicorn CPU emulator engine

MODPY_EGG_VERSION =	1.0.1
DISTNAME =	unicorn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://www.unicorn-engine.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# XXX: ERROR: Cannot use '/usr/local/bin/python3.6', Python 2.4 or later is required.
#FLAVORS =		python3
#FLAVOR ?=

USE_GMAKE =		Yes

MAKE_ENV +=		V=1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile

.include <bsd.port.mk>
