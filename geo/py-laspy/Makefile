# $OpenBSD: Makefile,v 1.11 2022/03/05 09:07:26 landry Exp $

COMMENT =		library for reading, modifying and creating LAS LiDAR files

MODPY_EGG_VERSION=	2.1.2
DISTNAME=		laspy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

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
