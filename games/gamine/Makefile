COMMENT=		interactive game for young children

DISTNAME=		gamine-1.6
REVISION=		2

CATEGORIES=		games

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gstreamer-1.0 gtk-3 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0

SITES=			${SITE_SOURCEFORGE:=gamine-game/}

BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

# sndio(7) support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base

LIB_DEPENDS=		multimedia/gstreamer1/core \
			x11/gtk+3

USE_GMAKE=		Yes
ALL_TARGET=		# empty
NO_TEST=		Yes

MAKE_FLAGS=		CC=${CC} \
			CFLAGS="${CFLAGS}" \
			PREFIX=${PREFIX} CC=${CC} \
			SYSCONFDIR=${SYSCONFDIR}

FAKE_FLAGS=		PREFIX=${PREFIX} \
			MANDIR=${PREFIX}/man/man6 \
			SYSCONFDIR=${PREFIX}/share/examples/gamine

.include <bsd.port.mk>
