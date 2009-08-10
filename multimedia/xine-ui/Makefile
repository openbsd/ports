# $OpenBSD: Makefile,v 1.12 2009/08/10 06:33:02 kili Exp $

COMMENT=		multimedia player

DISTNAME=		xine-ui-0.99.5
PKGNAME=		${DISTNAME}p2
CATEGORIES=		multimedia

HOMEPAGE=		http://xinehq.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

MODULES=		devel/gettext

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		xine.>=14::multimedia/xine-lib \
			curl.>=2::net/curl \
			png.>=4::graphics/png

WANTLIB=		X11 Xau Xdmcp Xext Xinerama Xtst Xv Xxf86vm \
			c m ncurses pthread pthread-stubs readline xcb z

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
