# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:54 sthen Exp $

COMMENT =		library for reading, modifying and creating LAS LiDAR files

MODPY_EGG_VERSION=	1.7.0
DISTNAME=		laspy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		geo devel textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	math/py-numpy,${FLAVOR}
RUN_DEPENDS =	math/py-numpy,${FLAVOR} \
		graphics/py-opengl,${FLAVOR}

.include <bsd.port.mk>
