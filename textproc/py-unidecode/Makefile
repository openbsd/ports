# $OpenBSD: Makefile,v 1.6 2015/09/29 10:52:53 sthen Exp $

COMMENT =		US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION =	0.4.18
REVISION =		1
DISTNAME =		Unidecode-0.04.18
PKGNAME = 		py-unidecode-0.04.18

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
