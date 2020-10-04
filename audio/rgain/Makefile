# $OpenBSD: Makefile,v 1.9 2020/10/04 07:56:22 jeremy Exp $

COMMENT=	multi-format tools and Python module for ReplayGain

MODPY_EGG_VERSION= 1.0.0
DISTNAME=	rgain3-${MODPY_EGG_VERSION}
EPOCH=		0
REVISION=	1

#WRKDIST=	${WRKDIR}/fk-rgain-8df1a846a12c

CATEGORIES=	audio

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYTEST=	Yes
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	textproc/py-docutils${MODPY_FLAVOR}

RUN_DEPENDS=	audio/py-mutagen${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good

TEST_DEPENDS=	${BASE_PKGPATH}

.include <bsd.port.mk>
