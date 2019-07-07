# $OpenBSD: Makefile,v 1.56 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		utility library for XKB

GNOME_PROJECT=		libxklavier
GNOME_VERSION=		5.4
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  xklavier             17.1     # .20.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier
MASTER_SITES=	https://people.freedesktop.org/~svu/

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xi ffi glib-2.0 gobject-2.0 lzma m pcre
WANTLIB += pthread xcb xkbfile xml2 z iconv intl

MODULES=		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection
BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes
LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-xkb-base="${X11BASE}/share/X11/xkb/" \
			--with-xkb-bin-base="${X11BASE}/bin/" \
			--with-xmodmap-base="/usr/share/xmodmap"
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
