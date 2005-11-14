# $OpenBSD: Makefile,v 1.9 2005/11/14 10:07:29 wilfried Exp $

COMMENT=		"terminal emulatation library"

DISTNAME=		vte-0.11.12
PKGNAME=		${DISTNAME}p1
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xrender atk-1.0.0.0 \
			c cairo fontconfig freetype glib-2.0.0.0 glitz \
			gmodule-2.0.0.0 gobject-2.0.0.0 iconv intl m \
			ncurses pango-1.0.0.0 pangocairo-1.0.0.0 \
			pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
			png util z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/vte/0.11/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.14.0p1:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.8,gdk_pixbuf-2.0.0.8,gtk-x11-2.0.0.8::x11/gtk+2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>
