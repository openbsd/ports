# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:42 sthen Exp $

COMMENT =	powerful declarative parser/builder for binary data

# !!! do not update blindly: security/plaso needs a specific version
EPOCH =		0
MODPY_EGG_VERSION = 2.5.3
DISTNAME =	construct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	http://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
