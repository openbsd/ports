# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:31 kmos Exp $

COMMENT =		backport of new features added to unittest

MODPY_EGG_VERSION =	1.1.0
REVISION =		1
DISTNAME =		unittest2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://hg.python.org/unittest2

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	unittest2

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-six \
			devel/py-traceback2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unittest2
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/unittest2

.include <bsd.port.mk>
