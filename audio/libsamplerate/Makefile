COMMENT=	audio sample rate conversion library

VER=		0.2.2
DISTNAME=	libsamplerate-${VER}
REVISION=	0
CATEGORIES=	audio
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	samplerate	3.0

HOMEPAGE=	https://libsndfile.github.io/libsamplerate/
MAINTAINER=	Jan Stary <hans@stare.cz>

# 2-BSD license
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/libsndfile/libsamplerate/releases/download/${VER}/

WANTLIB=	m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-cpu-clip \
		--disable-fftw \
		--disable-sndfile

.include <bsd.port.mk>
