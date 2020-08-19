# $OpenBSD: Makefile,v 1.29 2020/08/19 12:25:12 ajacoutot Exp $

COMMENT=		Python module to talk to Google Chromecast

MODPY_EGG_VERSION=	7.2.0
DISTNAME=		PyChromecast-${MODPY_EGG_VERSION}
PKGNAME=		py-chromecast-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-protobuf${MODPY_FLAVOR} \
			multimedia/py-casttube${MODPY_FLAVOR} \
			net/py-zeroconf${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
