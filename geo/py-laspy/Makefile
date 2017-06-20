# $OpenBSD: Makefile,v 1.1.1.1 2017/06/20 17:14:47 landry Exp $

COMMENT =		library for reading, modifying and creating LAS LiDAR files

MODPY_EGG_VERSION=	1.5.0
DISTNAME=		laspy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		geo devel textproc

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	math/py-numpy,${FLAVOR}
RUN_DEPENDS =	math/py-numpy,${FLAVOR} \
		graphics/py-opengl,${FLAVOR}

post-install:
.for b in lascopy lasexplorer lasnoise lasvalidate lasverify lasviewer
	mv ${PREFIX}/bin/${b}{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
