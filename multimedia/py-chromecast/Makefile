COMMENT=		Python module to talk to Google Chromecast

MODPY_EGG_VERSION=	10.3.0
DISTNAME=		PyChromecast-${MODPY_EGG_VERSION}
PKGNAME=		py-chromecast-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYTEST=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			multimedia/py-casttube${MODPY_FLAVOR} \
			net/py-zeroconf${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS=		textproc/py-iniconfig${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
