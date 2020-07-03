# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:47 sthen Exp $

COMMENT =		object-oriented filesystem paths

MODPY_EGG_VERSION =	2.3.3
DISTNAME =		pathlib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/mcmtroffaes/pathlib2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests \
			devel/py-pathlib2${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		sysutils/py-scandir
TEST_DEPENDS +=		devel/py-mock
.endif

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} test_pathlib2.py

.include <bsd.port.mk>
