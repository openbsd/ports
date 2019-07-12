# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:57 sthen Exp $

COMMENT=		Python module to talk to Google Chromecast

MODPY_EGG_VERSION=	3.2.2
DISTNAME=		PyChromecast-${MODPY_EGG_VERSION}
PKGNAME=		py-chromecast-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			multimedia/py-casttube${MODPY_FLAVOR} \
			net/py-zeroconf \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
