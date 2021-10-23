# $OpenBSD: Makefile,v 1.21 2021/08/28 09:03:46 cwen Exp $

COMMENT=	Japanese handwriting recognition

DISTNAME=	kanjipad-2.0.0
REVISION=	8
CATEGORIES=	japanese

HOMEPAGE=	https://fishsoup.net/software/kanjipad/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://fishsoup.net/software/kanjipad/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

# Needed for architectures not inlining sqrt(3), like powerpc
WANTLIB += m

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2

MAKE_FLAGS=OPTIMIZE="${CFLAGS}" LDFLAGS="${LDFLAGS}" PREFIX="${PREFIX}"

LDFLAGS+=	-lm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kanjipad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kanjipad

.include <bsd.port.mk>
