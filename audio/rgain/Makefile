COMMENT=	multi-format tools and Python module for ReplayGain

MODPY_DISTV=	1.1.1
GH_ACCOUNT=	chaudum
GH_PROJECT=	rgain3
GH_COMMIT=	4fbc941f895465245359f5d7412c977282eec363
PORTROACH=	https://github.com/chaudum/rgain3/tags/
DISTNAME=	rgain3-${MODPY_DISTV}pl20260331
EPOCH=		0

CATEGORIES=	audio

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
#MODPY_PI=	Yes

BUILD_DEPENDS=	textproc/py-docutils

RUN_DEPENDS=	audio/py-mutagen \
		devel/py-filetype \
		devel/py-gobject3 \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/libav \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good

TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
