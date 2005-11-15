# $OpenBSD: Makefile,v 1.32 2005/11/15 09:21:52 wilfried Exp $

COMMENT=		"screen saver and locker for the X Window System"

VERSION=		4.22
DISTNAME=		xscreensaver-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=     	x11

HOMEPAGE=		http://www.jwz.org/xscreensaver/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL GLU ICE SM X11 Xext Xinerama Xmu Xrandr Xrender \
			Xt Xxf86misc Xxf86vm c jpeg m pthread util z \
			atk-1.0.0.0 cairo fontconfig freetype Xpm \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

MASTER_SITES=		http://www.jwz.org/xscreensaver/

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gdk_pixbuf_xlib-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			glade-2.0.0.0::devel/libglade2 \
			xml2.6::textproc/libxml

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver" \
			--mandir=${PREFIX}/man
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

# License issues with graphics/gle necessitate this
FLAVORS=		no_gle
FLAVOR?=		no_gle

.if !${FLAVOR:L:Mno_gle}
LIB_DEPENDS+=		gle.3::graphics/gle
CONFIGURE_ARGS+=	--with-gle
.else
CONFIGURE_ARGS+=	--without-gle
.endif

post-install:
# rename deco to xdeco, so it doesn't conflict with misc/deco
	@mv ${PREFIX}/man/man1/deco.1  ${PREFIX}/man/man1/xdeco.1
	@mv ${PREFIX}/libexec/xscreensaver/deco \
		${PREFIX}/libexec/xscreensaver/xdeco
	@mv ${PREFIX}/share/xscreensaver/config/deco.xml \
		${PREFIX}/share/xscreensaver/config/xdeco.xml

.include <bsd.port.mk>
