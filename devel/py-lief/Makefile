# $OpenBSD: Makefile,v 1.6 2021/03/04 08:38:38 jasper Exp $

COMMENT =	library to instrument executable formats

MODPY_EGG_VERSION =	0.11.3

DISTNAME =	lief-${MODPY_EGG_VERSION}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://lief.quarkslab.com/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/cmake

.include <bsd.port.mk>
