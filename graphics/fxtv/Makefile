# $OpenBSD: Makefile,v 1.11 2000/03/24 23:28:09 espie Exp $
# $FreeBSD: Makefile,v 1.17 1999/03/16 14:01:06 roger Exp $

DISTNAME=	fxtv-0.48
CATEGORIES=	graphics
NEED_VERSION=	 1.230
MASTER_SITES=	http://www.ipass.net/~dbhopper/aa8vb/fxtv/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

USE_X11=	Yes
USE_GMAKE=      Yes
MAKE_FLAGS=	-e

.include <bsd.port.mk>
