# $OpenBSD: Makefile,v 1.4 2015/09/18 09:30:02 ajacoutot Exp $

COMMENT =		US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION =	0.04.18
DISTNAME =		Unidecode-${MODPY_EGG_VERSION}
PKGNAME = 		py-unidecode-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://pypi.python.org/pypi/Unidecode

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
