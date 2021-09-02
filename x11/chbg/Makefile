# $OpenBSD: Makefile,v 1.32 2021/09/02 20:53:12 ajacoutot Exp $

COMMENT=		desktop wallpaper manager and X11 screensaver

DISTNAME=		chbg-2.0.1
REVISION=		8

CATEGORIES=		x11

HOMEPAGE=		http://www.beebgames.com/sw/gtk-ports.html
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png pthread z

MASTER_SITES=		http://www.beebgames.com/sw/

USE_GMAKE=		Yes

LIB_DEPENDS=		x11/gtk+2

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS +=		chbg_LDADD=-lm

post-extract:
	cd ${WRKSRC} && ${MAKE_PROGRAM} distclean

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/chbg
	${INSTALL_DATA} ${WRKSRC}/kde2.txt ${WRKSRC}/xscreensaver-howto.txt \
		${PREFIX}/share/doc/chbg
	${INSTALL_DATA} ${WRKSRC}/chbgrc.sample ${PREFIX}/share/examples/chbg

.include <bsd.port.mk>
