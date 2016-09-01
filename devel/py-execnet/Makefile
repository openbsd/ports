# $OpenBSD: Makefile,v 1.1.1.1 2016/09/01 10:14:39 edd Exp $

COMMENT =		rapid multi-Python deployment

DISTNAME =		execnet-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.4.1
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://codespeak.net/execnet

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		devel/py-apipkg${MODPY_FLAVOR}
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest testing

.include <bsd.port.mk>
