COMMENT=	computer simulation game

DISTNAME=	corewars-0.9.13
REVISION=	11

CATEGORIES=	games x11

HOMEPAGE=	https://corewars.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

LIB_DEPENDS=	x11/gtk+2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=corewars/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

# Needed for architectures not inlining sqrt(3), like powerpc
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -lm"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/corewars
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/corewars

.include <bsd.port.mk>
