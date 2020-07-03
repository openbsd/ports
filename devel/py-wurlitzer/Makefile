# $OpenBSD: Makefile,v 1.9 2020/07/03 21:12:52 sthen Exp $

COMMENT =		capture c-level output in context managers

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		wurlitzer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/minrk/wurlitzer

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test.py

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

pre-configure:
	cd ${WRKDIR}; ${CC} ${CFLAGS} ${FILESDIR}/getsize.c -o getsize; \
	sed -i "s,SIZE_OF_FILE,$$(./getsize),g" ${WRKSRC}/wurlitzer.py

.include <bsd.port.mk>
