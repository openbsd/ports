# $OpenBSD: Makefile,v 1.9 2021/11/02 00:00:51 sthen Exp $

COMMENT =	library to instrument executable formats

MODPY_EGG_VERSION =	0.11.5

DISTNAME =	lief-${MODPY_EGG_VERSION}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME}
REVISION =	0

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
