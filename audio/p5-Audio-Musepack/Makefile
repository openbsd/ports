COMMENT=	object-oriented interface to Musepack/APE file information

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Audio-Musepack-1.0.1
CATEGORIES=	audio
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	audio/p5-MP3-Info>=1.20 \
		audio/p5-Audio-Scan
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
