# $OpenBSD: Makefile,v 1.7 2016/01/07 21:37:49 jasper Exp $

COMMENT =		US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION =	0.4.18
REVISION =		1
DISTNAME =		Unidecode-0.04.18
PKGNAME = 		py-unidecode-0.04.18

CATEGORIES =		textproc


# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
