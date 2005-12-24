# $OpenBSD: Makefile,v 1.7 2005/12/24 16:01:55 espie Exp $

COMMENT=	"text to speech utility"

.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "mips64"
BROKEN=		"gcc hang compiling cmu_us_kal_diphone.c"
.endif

VERSION=	1.2
DISTNAME=	flite-${VERSION}-release
PKGNAME=	flite-${VERSION}p0
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
FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST}

CATEGORIES=	audio

HOMEPAGE=	http://www.cmuflite.org/

MAINTAINER=	Jason L. Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=   No, mods have to be clearly marked
PERMIT_PACKAGE_FTP=     No, mods have to be clearly marked
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m

MASTER_SITES=	http://www.speech.cs.cmu.edu/flite/packed/flite-${VERSION}/

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

.include <bsd.port.mk>
