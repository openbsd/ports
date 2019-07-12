# $OpenBSD: Makefile,v 1.2 2019/07/12 20:50:12 sthen Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20140328
DISTNAME =		pdfminer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	http://www.unixuser.org/~euske/python/pdfminer/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

TEST_FLAGS =		PYTHON=${MODPY_BIN}

pre-build:
	cd ${WRKBUILD} && ${MAKE_PROGRAM} PYTHON=${MODPY_BIN} cmap

.include <bsd.port.mk>
