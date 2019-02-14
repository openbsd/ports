# $OpenBSD: Makefile,v 1.1.1.1 2019/02/14 22:34:18 mariani Exp $

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

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

pre-configure:
	cd ${WRKDIR}; ${CC} ${CFLAGS} ${FILESDIR}/getsize.c -o getsize; \
	sed -i "s,SIZE_OF_FILE,$$(./getsize),g" ${WRKSRC}/wurlitzer.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest test.py

.include <bsd.port.mk>
