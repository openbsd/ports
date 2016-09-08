# $OpenBSD: Makefile,v 1.17 2016/09/08 10:36:48 jasper Exp $

COMMENT=	Japanese handwriting recognition

DISTNAME=	kanjipad-2.0.0
REVISION=	5
CATEGORIES=	japanese

HOMEPAGE=	http://fishsoup.net/software/kanjipad/

# GPLv2
PERMIT_PACKAGE_CDROM=Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

LIB_DEPENDS=	devel/gettext \
		x11/gtk+2

MAKE_FLAGS=OPTIMIZE='${CFLAGS}' PREFIX=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kanjipad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kanjipad

.include <bsd.port.mk>
