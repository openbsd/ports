# $OpenBSD: Makefile,v 1.4 2019/02/14 10:56:07 ajacoutot Exp $

COMMENT=		Python module to talk to Google Chromecast

MODPY_EGG_VERSION=	2.5.0
DISTNAME=		PyChromecast-${MODPY_EGG_VERSION}
PKGNAME=		py-chromecast-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			multimedia/py-casttube${MODPY_FLAVOR} \
			net/py-zeroconf${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
