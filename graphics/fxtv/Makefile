# $OpenBSD: Makefile,v 1.5 1999/10/26 11:31:40 downsj Exp $
# $FreeBSD: Makefile,v 1.17 1999/03/16 14:01:06 roger Exp $

DISTNAME=	fxtv-0.48
CATEGORIES=	graphics
MASTER_SITES=	http://www.ipass.net/~dbhopper/aa8vb/fxtv/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	tiff.3.4:${PORTSDIR}/graphics/tiff34 \
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
