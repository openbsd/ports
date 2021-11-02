# $OpenBSD: Makefile,v 1.22 2021/11/02 00:02:19 sthen Exp $

COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_EGG_VERSION=	3.3.1
DISTNAME=		SecretStorage-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		0

CATEGORIES=   		security

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

NO_TEST=		Yes

RUN_DEPENDS=		devel/py-jeepney${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

# org.freedesktop.secrets
# not enforcing RDEP to give user the choice of secret service provider
TEST_DEPENDS +=		gnome-keyring-*|keepassxc-*:x11/gnome/keyring

.include <bsd.port.mk>
