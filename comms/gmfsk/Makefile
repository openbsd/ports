# $OpenBSD: Makefile,v 1.45 2020/06/10 07:17:32 ajacoutot Exp $

COMMENT=	GNOME multimode HF terminal

GNOME_PROJECT=	gmfsk
GNOME_VERSION=	0.6
REVISION=	28
CATEGORIES=	comms hamradio

HOMEPAGE=	http://gmfsk.connect.fi/
MASTER_SITES=	${HOMEPAGE}	\
		http://he.fi/pub/ham/unix/linux/hfmodems/
EXTRACT_SUFX=	.tar.gz

# GPLv2 - FDL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE ORBit-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB += fftw fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += hamlib harfbuzz intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += popt sndio z

MODULES=		x11/gnome \
			devel/gconf2

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		No
MODGCONF2_SCHEMAS_DIR=	gmfsk

LIB_DEPENDS=		comms/hamlib \
			math/fftw \
			x11/gtk+2 \
			x11/gnome/libgnomeui

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-hamlib
CONFIGURE_ENV=		LIBS="-lsndio"
CFLAGS +=	-fgnu89-inline

pre-configure:
	ln -sf /usr/bin/true ${WRKDIR}/bin/scrollkeeper-config

.include <bsd.port.mk>
