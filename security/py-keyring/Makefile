# $OpenBSD: Makefile,v 1.19 2021/09/02 13:27:04 ajacoutot Exp $

COMMENT=		store and access your passwords safely

MODPY_EGG_VERSION=	23.1.0
DISTNAME=		keyring-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=   		security

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	keyring/cli.py
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-entrypoints${MODPY_FLAVOR} \
			devel/py-importlib-metadata${MODPY_FLAVOR} \
			security/py-secretstorage${MODPY_FLAVOR}

# KWallet backend
RUN_DEPENDS +=		x11/dbus-python${MODPY_FLAVOR}

MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
