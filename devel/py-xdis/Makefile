# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:56 sthen Exp $

COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_EGG_VERSION =	3.6.11
DISTNAME =		xdis-${MODPY_EGG_VERSION}
PKGNAME =		py-xdis-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/rocky/python-xdis/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		lang/python/${MODPY_VERSION},-tests
.endif

post-install:
	mv ${PREFIX}/bin/pydisasm{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
