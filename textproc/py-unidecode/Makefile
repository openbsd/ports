# $OpenBSD: Makefile,v 1.2 2015/04/13 09:03:28 jasper Exp $

COMMENT =	US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION = 0.04.14
DISTNAME =	Unidecode-${MODPY_EGG_VERSION}
PKGNAME = 	py-unidecode-${MODPY_EGG_VERSION}

CATEGORIES =	textproc

HOMEPAGE =	https://pypi.python.org/pypi/Unidecode

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
