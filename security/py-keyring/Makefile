# $OpenBSD: Makefile,v 1.23 2021/12/30 16:42:59 ajacoutot Exp $

COMMENT=		store and access your passwords safely

MODPY_EGG_VERSION=	23.4.0
DISTNAME=		keyring-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		security

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	keyring/cli.py
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-entrypoints${MODPY_FLAVOR} \
			devel/py-importlib-metadata${MODPY_FLAVOR} \
			security/py-secretstorage${MODPY_FLAVOR}

# KWallet backend
RUN_DEPENDS+=		x11/dbus-python${MODPY_FLAVOR}

MODPY_PYTEST_ARGS=	tests

# Cannot autolaunch D-Bus without X11 $DISPLAY
TEST_IS_INTERACTIVE=	x11

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
