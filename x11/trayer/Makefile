COMMENT=		lightweight GTK2-based systray

V=			1.1.8
GH_TAGNAME=		trayer-${V}
GH_PROJECT=		trayer-srg
GH_ACCOUNT=		sargon
DISTNAME=		trayer-${V}
REVISION=		0

CATEGORIES=		x11

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z

USE_GMAKE=		Yes

BUILD_DEPENDS=		shells/bash

LIB_DEPENDS=		x11/gtk+2

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${TRUEPREFIX}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trayer ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/trayer.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
