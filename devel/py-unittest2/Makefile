# $OpenBSD: Makefile,v 1.8 2020/02/09 23:29:56 pamela Exp $

COMMENT =		backport of new features added to unittest

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		unittest2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://hg.python.org/unittest2

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	unittest2

BUILD_DEPENDS =		devel/py-six \
			devel/py-traceback2

RUN_DEPENDS =		${BUILD_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unittest2
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/unittest2

.include <bsd.port.mk>
