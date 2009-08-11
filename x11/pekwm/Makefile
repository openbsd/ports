# $OpenBSD: Makefile,v 1.16 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.11
CATEGORIES=	x11
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://pekwm.org/

MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xft Xpm Xrandr Xrender Xau Xdmcp \
		Xinerama expat z c fontconfig freetype m stdc++ \
		pthread-stubs xcb

MODULES=	converters/libiconv

EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	${HOMEPAGE}projects/3/files/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=5::graphics/png

USE_X11= 	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>
