# $OpenBSD: Makefile,v 1.3 2019/10/25 07:25:39 feinerer Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20191020
DISTNAME =		pdfminer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	http://www.unixuser.org/~euske/python/pdfminer/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

TEST_FLAGS =		PYTHON=${MODPY_BIN}

pre-build:
	cd ${WRKBUILD} && ${MAKE_PROGRAM} PYTHON=${MODPY_BIN} cmap

.include <bsd.port.mk>
