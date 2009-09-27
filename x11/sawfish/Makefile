# $OpenBSD: Makefile,v 1.36 2009/09/27 16:56:40 jasper Exp $

COMMENT=	extensible window manager

VERSION=	1.3.3
DISTNAME=	sawfish-${VERSION}
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sawmill/}

HOMEPAGE=       http://sawfish.wikia.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png rep z pthread-stubs xcb

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:rep-gtk-*:x11/rep-gtk

MODULES=	devel/gettext

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=	GNU_ARCH VERSION

USE_X11=	Yes
USE_GMAKE=      Yes

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/etc
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-audiofile \
		--without-esd \
		--disable-capplet \
		--disable-themer \
		--disable-gnome-widgets \
		--disable-linguas
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I{X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="/usr/X11R6/lib/pkgconfig"

NO_REGRESS=	Yes

.include <bsd.port.mk>
