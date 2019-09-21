# $OpenBSD: Makefile,v 1.5 2019/09/21 16:23:26 kmos Exp $

COMMENT =		library for reading, modifying and creating LAS LiDAR files

MODPY_EGG_VERSION=	1.6.0
DISTNAME=		laspy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

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
