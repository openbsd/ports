# $OpenBSD: Makefile,v 1.6 2007/05/14 22:24:27 naddy Exp $

COMMENT=		"multimedia player"

DISTNAME=		xine-ui-0.99.4
PKGNAME=		${DISTNAME}p2
CATEGORIES=		multimedia

HOMEPAGE=		http://xinehq.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

MODULES=		gettext

LIB_DEPENDS=		xine.>=14::multimedia/xine-lib \
			curl.>=2::net/curl \
			png.>=4::graphics/png

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xinerama Xtst Xv Xxf86vm \
			c crypto freetype idn m ncurses pthread readline ssl z

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

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
