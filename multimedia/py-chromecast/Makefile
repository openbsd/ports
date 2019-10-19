# $OpenBSD: Makefile,v 1.17 2019/10/19 10:00:25 ajacoutot Exp $

COMMENT=		Python module to talk to Google Chromecast

MODPY_EGG_VERSION=	4.1.0
DISTNAME=		PyChromecast-${MODPY_EGG_VERSION}
PKGNAME=		py-chromecast-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			multimedia/py-casttube${MODPY_FLAVOR} \
			net/py-zeroconf \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
