COMMENT=		D-Bus introspection XML parser and processor

MODPY_EGG_VERSION=	0.6.1
DISTNAME=		dbus-deviation-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		devel

HOMEPAGE=		https://tecnocode.co.uk/dbus-deviation/

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=		textproc/py-lxml${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
