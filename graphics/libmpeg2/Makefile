# $OpenBSD: Makefile,v 1.1.1.1 2003/07/19 18:18:07 jolan Exp $

COMMENT=	"free MPEG-2 video stream decoder"
DISTNAME=	mpeg2dec-20030612
PKGNAME=	libmpeg2-20030612
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.videolan.org/pub/videolan/vlc/0.6.0/contrib/

HOMEPAGE=	http://libmpeg2.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig->=0.12.0p1:devel/pkgconfig

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS="-lX11 -lXext -lXv"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --disable-sdl

.include <bsd.port.mk>
