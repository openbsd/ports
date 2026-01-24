COMMENT=	Python FFmpeg progress wrapper

MODPY_DISTV=	1.1.1
GH_ACCOUNT=	slhck
GH_PROJECT=	ffmpeg-progress-yield
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-ffmpeg-progress-yield-${MODPY_DISTV}

CATEGORIES=	multimedia

HOMEPAGE=	https://github.com/slhck/ffmpeg-progress-yield

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	graphics/ffmpeg

MODULES=	lang/python
MODPY_PYBUILD=	uv_build
TEST_DEPENDS=	devel/py-test-asyncio

.include <bsd.port.mk>
