# $OpenBSD: Makefile,v 1.8 2000/02/12 06:29:54 turan Exp $
# $FreeBSD: Makefile,v 1.17 1999/03/16 14:01:06 roger Exp $

DISTNAME=	fxtv-0.48
CATEGORIES=	graphics
MASTER_SITES=	http://www.ipass.net/~dbhopper/aa8vb/fxtv/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.195

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	tiff.35:${PORTSDIR}/graphics/tiff \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		Xaw3d.6.1:${PORTSDIR}/x11/Xaw3d

# This program does not actually require the programs below, but they are 
# needed if you use digital video recording and playback.
#RUN_DEPENDS=	sox:${PORTSDIR}/audio/sox \
#		mpg123:${PORTSDIR}/audio/mpg123 \
#		mpeg_musicin:${PORTSDIR}/audio/mpegaudio \
#		mpeg_encode:${PORTSDIR}/graphics/mpeg_encode \
#		mplex:${PORTSDIR}/graphics/mplex

USE_X11=	yes
USE_GMAKE=      yes
MAKE_FLAGS=	-e

.include <bsd.port.mk>
