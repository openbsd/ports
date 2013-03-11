# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:25 espie Exp $

COMMENT =		INI parser for Python

MODPY_EGG_VERSION =	0.4
DISTNAME =		iniparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/iniparse/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=i/iniparse/}

MODULES =		lang/python

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} &&  ${SETENV} ${MAKE_ENV} \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
