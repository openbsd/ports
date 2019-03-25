# $OpenBSD: Makefile,v 1.4 2019/03/25 14:29:50 kn Exp $

COMMENT =	powerful declarative parser/builder for binary data

# !!! do not update blindly: security/plaso needs a specific version
EPOCH =		0
MODPY_EGG_VERSION = 2.5.3
DISTNAME =	construct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
