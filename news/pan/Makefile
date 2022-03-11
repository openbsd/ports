COMMENT=	powerful newsreader

V=		0.149
DISTNAME=	pan-${V}
CATEGORIES=	news x11

HOMEPAGE=	http://pan.rebelbase.com/

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject enchant-2
WANTLIB += gck-1 gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmime-3.0 gmodule-2.0 gnutls gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtkspell3-3 harfbuzz iconv intl m notify p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 secret-1 z

COMPILER=	base-clang ports-gcc base-gcc

USE_GMAKE= 	Yes

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/itstool

LIB_DEPENDS=	devel/libnotify \
		mail/gmime30 \
		security/gnutls \
		textproc/gtkspell3 \
		x11/gnome/gcr

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE=gnu

# GLIB_VERSION_MIN_REQUIRED to fix build with GLib >=2.68
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DGLIB_VERSION_MIN_REQUIRED=GLIB_VERSION_2_26" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS=	--with-gtk3 \
		--enable-libnotify \
		--enable-gkr \
		--with-gnutls

.include <bsd.port.mk>
