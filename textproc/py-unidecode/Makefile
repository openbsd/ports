# $OpenBSD: Makefile,v 1.1.1.1 2014/05/11 20:41:40 benoit Exp $

COMMENT =	US-ASCII transliterations of Unicode text

MODPY_EGG_VERSION = 0.04.14
DISTNAME =	Unidecode-${MODPY_EGG_VERSION}
PKGNAME = 	py-unidecode-${MODPY_EGG_VERSION}

CATEGORIES =	textproc

HOMEPAGE =	https://pypi.python.org/pypi/Unidecode

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://pypi.python.org/packages/source/U/Unidecode/

MODULES =	lang/python

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
