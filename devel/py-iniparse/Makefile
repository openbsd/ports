# $OpenBSD: Makefile,v 1.4 2015/04/02 14:21:15 jasper Exp $

COMMENT =		INI parser for Python

MODPY_EGG_VERSION =	0.4
DISTNAME =		iniparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/iniparse/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} &&  ${SETENV} ${MAKE_ENV} \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
