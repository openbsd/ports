# $OpenBSD: Makefile,v 1.31 2019/08/08 08:26:28 sthen Exp $

COMMENT=		desktop wallpaper manager and X11 screensaver

DISTNAME=		chbg-2.0.1
REVISION=		7

CATEGORIES=		x11

HOMEPAGE=		http://www.beebgames.com/sw/gtk-ports.html
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES=		http://www.beebgames.com/sw/


LIB_DEPENDS=		x11/gtk+2

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Will install some stub files for gnome. Needed if Gnome not installed
# when packaging.
FAKE_FLAGS=		GNOME_PREFIX=${PREFIX}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		Yes
MAKE_FLAGS +=		chbg_LDADD=-lm

post-extract:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} distclean

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chbg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/kde2.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/xscreensaver-howto.txt ${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/chbgrc.sample ${PREFIX}/share/examples/chbg

.include <bsd.port.mk>
