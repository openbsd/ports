COMMENT=		Python module to talk to Google Chromecast

MODPY_DISTV=	14.0.5
DISTNAME=		PyChromecast-${MODPY_DISTV}
PKGNAME=		py-chromecast-${MODPY_DISTV}
REVISION=		0

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-protobuf \
			multimedia/py-casttube \
			net/py-zeroconf \
			www/py-requests

TEST_DEPENDS=		textproc/py-iniconfig \
			textproc/py-toml

.include <bsd.port.mk>
