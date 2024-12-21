COMMENT=	multi-format tools and Python module for ReplayGain

MODPY_DISTV=	1.1.1
DISTNAME=	rgain3-${MODPY_DISTV}
EPOCH=		0
REVISION=	5

CATEGORIES=	audio

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	textproc/py-docutils

RUN_DEPENDS=	audio/py-mutagen \
		devel/py-gobject3 \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good

TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
