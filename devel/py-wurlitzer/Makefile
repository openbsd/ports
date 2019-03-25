# $OpenBSD: Makefile,v 1.2 2019/03/25 14:29:52 kn Exp $

COMMENT =		capture c-level output in context managers

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		wurlitzer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/minrk/wurlitzer

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test.py

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

pre-configure:
	cd ${WRKDIR}; ${CC} ${CFLAGS} ${FILESDIR}/getsize.c -o getsize; \
	sed -i "s,SIZE_OF_FILE,$$(./getsize),g" ${WRKSRC}/wurlitzer.py

.include <bsd.port.mk>
