# $OpenBSD: Makefile,v 1.3 2005/02/22 22:24:36 naddy Exp $

COMMENT=		"Quasar DV codec"

DISTNAME=		libdv-0.104
CATEGORIES=		multimedia

HOMEPAGE=		http://libdv.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

BUILD_DEPENDS=		::devel/pkgconfig

LIB_DEPENDS=		SDL.2::devel/sdl \
			gdk.1.2,gtk.1.2::x11/gtk+ \
			glib.1.2,gmodule.1.2::devel/glib \
			popt.0::devel/popt

WANTLIB=		X11 Xext Xi Xv c iconv intl m ossaudio pthread usbhid

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-sdl --enable-gtk --with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:${X11BASE}/lib/pkgconfig

.include <bsd.port.mk>
