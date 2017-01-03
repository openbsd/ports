# $OpenBSD: Makefile,v 1.12 2017/01/03 19:26:14 landry Exp $

COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_EGG_VERSION=	2.3.0
DISTNAME=		SecretStorage-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		0

CATEGORIES=   		security

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
