# New ports collection makefile for:	fxtv
# Version required:	0.48
# Date created:		Tue Mar 23 18:07:47 PST 1999
# Whom:			Jason Downs <downsj@downsj.com>
#
# From FreeBSD:
# Date created:		Sun Sep  7 17:55:07 EDT 1997
# Whom:			Randall Hopper <aa8vb@ipass.net>
#
# $FreeBSD: Makefile,v 1.17 1999/03/16 14:01:06 roger Exp $
# $OpenBSD: Makefile,v 1.1 1999/03/24 02:14:46 downsj Exp $
#

DISTNAME=	fxtv-0.48
CATEGORIES=	graphics
MASTER_SITES=	http://www.ipass.net/~dbhopper/aa8vb/fxtv/
EXTRACT_SUFX=	.tgz

MAINTAINER=	aa8vb@ipass.net

LIB_DEPENDS=	tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34 \
		jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
		Xaw3d\\.6:${PORTSDIR}/x11/Xaw3d \
		Xpm\\.4:${PORTSDIR}/graphics/xpm

# This program does not actually require the programs below, but they are 
# needed if you use digital video recording and playback.
#RUN_DEPENDS=	sox:${PORTSDIR}/audio/sox \
#		mpg123:${PORTSDIR}/audio/mpg123 \
#		mpeg_musicin:${PORTSDIR}/audio/mpegaudio \
#		mpeg_encode:${PORTSDIR}/graphics/mpeg_encode \
#		mplex:${PORTSDIR}/graphics/mplex

USE_X_PREFIX=	yes
USE_GMAKE=      yes
MAKE_FLAGS=	-e

.include <bsd.port.mk>
