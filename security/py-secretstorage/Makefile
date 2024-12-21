COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_DISTV=	3.3.3
DISTNAME=		SecretStorage-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME:L}
REVISION=		3

CATEGORIES=		security

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =	setuptools

# there are various tests, but pretty much all need dbus
NO_TEST=		Yes

RUN_DEPENDS=		devel/py-jeepney \
			security/py-cryptography

# org.freedesktop.secrets
# not enforcing RDEP to give user the choice of secret service provider
TEST_DEPENDS +=		gnome-keyring-*|keepassxc-*:x11/gnome/keyring

.include <bsd.port.mk>
