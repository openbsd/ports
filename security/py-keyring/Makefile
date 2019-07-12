# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:34 sthen Exp $

COMMENT=		store and access your passwords safely

MODPY_EGG_VERSION=	9.3.1
DISTNAME=		keyring-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=   		security

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	keyring/cli.py

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			security/py-secretstorage${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/keyring ${PREFIX}/bin/keyring${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
