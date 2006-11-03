# $OpenBSD: Makefile,v 1.37 2006/11/03 22:44:02 jasper Exp $

COMMENT=		"screen saver and locker for the X Window System"

DISTNAME=		xscreensaver-5.01
CATEGORIES=     	x11

HOMEPAGE=		http://www.jwz.org/xscreensaver/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL GLU ICE SM X11 Xext Xinerama Xmu Xrandr Xrender \
			Xt Xxf86misc Xxf86vm c jpeg m pthread util z \
			atk-1.0 fontconfig freetype Xpm pangocairo-1.0 \
			glib-2.0 gmodule-2.0 gobject-2.0 \
			pango-1.0 pangoft2-1.0 cairo

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gdk_pixbuf_xlib-2.0,gtk-x11-2.0::x11/gtk+2 \
			glade-2.0::devel/libglade2 \
			xml2.>=6::textproc/libxml

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver" \
			--with-x-app-defaults="${PREFIX}/lib/X11/app-defaults"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

# License issues with graphics/gle necessitate this
FLAVORS=		no_gle
FLAVOR?=		no_gle

.if !${FLAVOR:L:Mno_gle}
LIB_DEPENDS+=		gle.>=3::graphics/gle
CONFIGURE_ARGS+=	--with-gle
.else
CONFIGURE_ARGS+=	--without-gle
.endif

post-install:
# rename deco to xdeco, so it doesn't conflict with misc/deco
	@mv ${PREFIX}/man/man6/deco.6  ${PREFIX}/man/man6/xdeco.6
	@mv ${PREFIX}/libexec/xscreensaver/deco \
		${PREFIX}/libexec/xscreensaver/xdeco
	@mv ${PREFIX}/share/xscreensaver/config/deco.xml \
		${PREFIX}/share/xscreensaver/config/xdeco.xml

.include <bsd.port.mk>
