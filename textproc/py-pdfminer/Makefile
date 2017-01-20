# $OpenBSD: Makefile,v 1.1.1.1 2017/01/20 09:49:19 feinerer Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20140328
DISTNAME =		pdfminer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	http://www.unixuser.org/~euske/python/pdfminer/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

TEST_FLAGS =		PYTHON=${MODPY_BIN}

pre-build:
	cd ${WRKBUILD} && ${MAKE_PROGRAM} PYTHON=${MODPY_BIN} cmap

.include <bsd.port.mk>
