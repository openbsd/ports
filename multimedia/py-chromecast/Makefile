COMMENT=		Python module to talk to Google Chromecast

MODPY_EGG_VERSION=	14.0.1
DISTNAME=		PyChromecast-${MODPY_EGG_VERSION}
PKGNAME=		py-chromecast-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			multimedia/py-casttube${MODPY_FLAVOR} \
			net/py-zeroconf${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS=		textproc/py-iniconfig${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
