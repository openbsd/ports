# $OpenBSD: Makefile,v 1.12 2010/02/09 12:23:59 jasper Exp $

COMMENT=	text to speech utility

.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH:Mmips64*}
BROKEN=		gcc hang compiling cmu_us_kal_diphone.c
.endif

VERSION=	1.2
DISTNAME=	flite-${VERSION}-release
PKGNAME=	flite-${VERSION}p2
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
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m sndio

MASTER_SITES=	http://www.speech.cs.cmu.edu/flite/packed/flite-${VERSION}/

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS= ${CONFIGURE_SHARED} --with-audio=sndio

USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

post-extract:
	cp ${FILESDIR}/au_sndio.c ${WRKSRC}/src/audio

.include <bsd.port.mk>
