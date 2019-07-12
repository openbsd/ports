# $OpenBSD: Makefile,v 1.20 2019/07/12 21:02:22 sthen Exp $

COMMENT=	Japanese handwriting recognition

DISTNAME=	kanjipad-2.0.0
REVISION=	7
CATEGORIES=	japanese

HOMEPAGE=	https://fishsoup.net/software/kanjipad/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://fishsoup.net/software/kanjipad/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2

MAKE_FLAGS=OPTIMIZE='${CFLAGS}' PREFIX=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kanjipad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kanjipad

.include <bsd.port.mk>
