# $OpenBSD: Makefile,v 1.43 2007/07/18 11:26:30 jasper Exp $

COMMENT=		screen saver and locker for the X Window System

DISTNAME=		xscreensaver-5.03
CATEGORIES=		x11

HOMEPAGE=		http://www.jwz.org/xscreensaver/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi \
		Xinerama Xmu Xpm Xrandr Xrender Xt Xxf86misc Xxf86vm \
		atk-1.0 c cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread util z

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gdk_pixbuf_xlib-2.0,gtk-x11-2.0::x11/gtk+2 \
			glade-2.0::devel/libglade2 \
			xml2.>=6::textproc/libxml

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver" \
			--with-x-app-defaults="${PREFIX}/lib/X11/app-defaults"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

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
	@mv ${PREFIX}/man/man6/deco.6 ${PREFIX}/man/man6/xdeco.6
	@mv ${PREFIX}/libexec/xscreensaver/deco \
		${PREFIX}/libexec/xscreensaver/xdeco
	@mv ${PREFIX}/share/xscreensaver/config/deco.xml \
		${PREFIX}/share/xscreensaver/config/xdeco.xml

.include <bsd.port.mk>
