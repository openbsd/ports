# $OpenBSD: Makefile,v 1.6 2005/12/28 13:09:38 steven Exp $

COMMENT=	"free MPEG-2 video stream decoder"
DISTNAME=	mpeg2dec-0.4.0b
PKGNAME=	${DISTNAME:S/mpeg2dec/libmpeg2/}p0
SHARED_LIBS=		mpeg2		0.0	\
			mpeg2convert	0.0
MODGNU_SHARED_LIBS=	mpeg2		'-no-undefined'	\
			mpeg2convert	'-no-undefined'
CATEGORIES=	graphics x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://libmpeg2.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 Xext Xv

USE_X11=	Yes
USE_LIBTOOL=	Yes

BUILD_DEPENDS=	:pkgconfig->=0.12.0p1:devel/pkgconfig

WRKDIST=${WRKDIR}/mpeg2dec-0.4.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS="-lX11 -lXext -lXv"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --disable-sdl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
