# $OpenBSD: Makefile,v 1.1.1.1 2014/08/14 19:57:49 ajacoutot Exp $

COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_EGG_VERSION=	2.1.1
DISTNAME=		SecretStorage-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}

CATEGORIES=   		security

HOMEPAGE=		https://pypi.python.org/pypi/SecretStorage

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=S/SecretStorage/}

MODULES=		lang/python

NO_TEST=		Yes

RUN_DEPENDS=		devel/py-gobject3 \
			x11/dbus-python

# (XXX add "gnome-keyring-*|ksecretsservice-*" when implemented)
RUN_DEPENDS +=		x11/gnome/keyring

.include <bsd.port.mk>
