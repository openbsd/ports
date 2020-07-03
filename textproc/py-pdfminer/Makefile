# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:15 sthen Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20191125
DISTNAME =		pdfminer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
