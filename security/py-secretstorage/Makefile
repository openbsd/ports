# $OpenBSD: Makefile,v 1.5 2015/07/24 09:20:28 ajacoutot Exp $

COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_EGG_VERSION=	2.1.2
DISTNAME=		SecretStorage-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}

CATEGORIES=   		security

HOMEPAGE=		https://pypi.python.org/pypi/SecretStorage

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

NO_TEST=		Yes

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			security/py-crypto${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# (XXX add "gnome-keyring-*|ksecretsservice-*" when implemented)
RUN_DEPENDS +=		x11/gnome/keyring

.include <bsd.port.mk>
