# $OpenBSD: Makefile,v 1.19 2000/06/22 21:35:20 espie Exp $
# $FreeBSD: Makefile,v 1.17 1999/03/16 14:01:06 roger Exp $

BROKEN=		"security issues with tempnam(), to fix"
DISTNAME=	fxtv-1.02
CATEGORIES=	graphics
NEED_VERSION=	1.301
MASTER_SITES=	http://www.ipass.net/~dbhopper/aa8vb/fxtv/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	tiff.35::graphics/tiff \
		jpeg.62::graphics/jpeg \
		Xaw3d.6.1::x11/Xaw3d
# This program does not actually require the programs below, but they are 
# needed if you use digital video recording and playback.
#RUN_DEPENDS=	sox::audio/sox \
#		mpg123::audio/mpg123 \
#		mpeg_musicin::audio/mpegaudio \
#		mpeg_encode::graphics/mpeg_encode \
#		mplex::graphics/mplex

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=      Yes
MAKE_FLAGS=	CFLAGS="${CFLAGS}"
FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

pre-build:
	@cd $(WRKSRC)/videolib && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKEFLAGS} -f ${MAKE_FILE} clean && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKEFLAGS} -f ${MAKE_FILE}

.include <bsd.port.mk>
