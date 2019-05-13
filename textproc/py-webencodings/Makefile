# $OpenBSD: Makefile,v 1.3 2019/05/13 19:03:54 danj Exp $

COMMENT =		character encoding aliases for legacy web content

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		webencodings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		1

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} -v

.include <bsd.port.mk>
