# $OpenBSD: Makefile,v 1.26 2013/10/11 23:51:48 naddy Exp $

COMMENT=		Desktop wallpaper manager and X11 screensaver

DISTNAME=		chbg-2.0.1
REVISION=		4

CATEGORIES=		x11

HOMEPAGE=		http://www.beebgames.com/sw/gtk-ports.html
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.beebgames.com/sw/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL pthread xcb-render xcb-shm

LIB_DEPENDS=		x11/gtk+2

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Will install some stub files for gnome. Needed if Gnome not installed
# when packaging.
FAKE_FLAGS=		GNOME_PREFIX=${PREFIX}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext

SEPARATE_BUILD=		Yes

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} distclean

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chbg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/kde2.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/xscreensaver-howto.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/chbgrc.sample ${PREFIX}/share/examples/chbg

.include <bsd.port.mk>
