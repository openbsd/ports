# $OpenBSD: Makefile,v 1.9 2007/10/02 19:09:44 jasper Exp $

COMMENT=		multimedia player

DISTNAME=		xine-ui-0.99.5
CATEGORIES=		multimedia

HOMEPAGE=		http://xinehq.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

MODULES=		devel/gettext

LIB_DEPENDS=		xine.>=14::multimedia/xine-lib \
			curl.>=2::net/curl \
			png.>=4::graphics/png

WANTLIB=		X11 Xau Xdmcp Xext Xinerama Xtst Xv Xxf86vm \
			c crypto m ncurses pthread readline ssl z

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-lirc \
			--disable-vdr-keys \
			--disable-mbs \
			--disable-xft \
			--without-aalib \
			--without-libcaca

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
