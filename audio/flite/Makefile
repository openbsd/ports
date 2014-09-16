# $OpenBSD: Makefile,v 1.19 2014/09/16 19:56:09 miod Exp $

BROKEN-m88k=	out of memory compiling cmu_us_kal_diphone.c
BROKEN-mips64=	GCC hangs compiling cmu_us_kal_diphone.c
BROKEN-mips64el= GCC hangs compiling cmu_us_kal_diphone.c

COMMENT=	text to speech utility

VERSION=	1.2
DISTNAME=	flite-${VERSION}-release
PKGNAME=	flite-${VERSION}
REVISION=	4
SHARED_LIBS=	flite			1.2 \
		flite_cmu_time_awb	1.2 \
		flite_cmu_us_kal	1.2 \
		flite_cmu_us_kal16	1.2 \
		flite_cmulex		1.2 \
		flite_usenglish		1.2

MAKE_FLAGS=	LIBlibflite.so_VERSION=${LIBflite_VERSION} \
	LIBlibflite_cmu_time_awb.so_VERSION=${LIBflite_cmu_time_awb_VERSION} \
	LIBlibflite_cmu_us_kal.so_VERSION=${LIBflite_cmu_us_kal_VERSION} \
	LIBlibflite_cmu_us_kal16.so_VERSION=${LIBflite_cmu_us_kal16_VERSION} \
	LIBlibflite_cmulex.so_VERSION=${LIBflite_cmulex_VERSION} \
	LIBlibflite_usenglish.so_VERSION=${LIBflite_usenglish_VERSION}

CATEGORIES=	audio

HOMEPAGE=	http://www.cmuflite.org/

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c m sndio

MASTER_SITES=	http://www.speech.cs.cmu.edu/flite/packed/flite-${VERSION}/

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS= ${CONFIGURE_SHARED} --with-audio=sndio

USE_GMAKE=	Yes
NO_TEST=	Yes

post-extract:
	cp ${FILESDIR}/au_sndio.c ${WRKSRC}/src/audio

.include <bsd.port.mk>
