COMMENT=	Python FFmpeg progress wrapper

MODPY_DISTV=	0.9.1
DISTNAME=	ffmpeg-progress-yield-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	multimedia

HOMEPAGE=	https://github.com/slhck/ffmpeg-progress-yield

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	graphics/ffmpeg

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	test/test.py

.include <bsd.port.mk>
