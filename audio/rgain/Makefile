# $OpenBSD: Makefile,v 1.7 2020/09/13 12:24:12 ajacoutot Exp $

COMMENT=	multi-format tools and Python module for ReplayGain

MODPY_EGG_VERSION= 1.0.0
DISTNAME=	rgain3-${MODPY_EGG_VERSION}
EPOCH=		0

#WRKDIST=	${WRKDIR}/fk-rgain-8df1a846a12c

CATEGORIES=	audio

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYTEST=	Yes
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	textproc/py-docutils${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR} \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good

TEST_DEPENDS=	${BASE_PKGPATH}

.include <bsd.port.mk>
