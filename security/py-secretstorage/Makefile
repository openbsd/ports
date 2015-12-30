# $OpenBSD: Makefile,v 1.8 2015/12/30 10:45:00 ajacoutot Exp $

COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_EGG_VERSION=	2.1.3
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

# org.freedesktop.secrets
# (XXX add "gnome-keyring-*|ksecretsservice-*" when implemented)
RUN_DEPENDS +=		x11/gnome/keyring

.include <bsd.port.mk>
