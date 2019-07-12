# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:49 sthen Exp $

COMMENT =		INI parser for Python

MODPY_EGG_VERSION =	0.4
DISTNAME =		iniparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} &&  ${SETENV} ${MAKE_ENV} \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
