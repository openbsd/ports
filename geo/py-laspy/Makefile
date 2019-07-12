# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:55 sthen Exp $

COMMENT =		library for reading, modifying and creating LAS LiDAR files

MODPY_EGG_VERSION=	1.5.1
DISTNAME=		laspy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		geo devel textproc

# BSD
PERMIT_PACKAGE =	Yes

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
