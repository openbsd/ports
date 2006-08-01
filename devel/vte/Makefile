# $OpenBSD: Makefile,v 1.13 2006/08/01 23:39:08 espie Exp $

COMMENT=		"terminal emulatation library"

DISTNAME=		vte-0.11.12
PKGNAME=		${DISTNAME}p3
CATEGORIES=		devel
SHARED_LIBS=		vte	8.0

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xrender c fontconfig freetype \
			m ncurses util atk-1.0.0.0 glib-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
			pangocairo-1.0.0.0 cairo glitz png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/vte/0.11/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.14.0p1:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.>=0.8,gdk_pixbuf-2.0.>=0.8,gtk-x11-2.0.>=0.8::x11/gtk+2

MODULES=		devel/gettext

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
