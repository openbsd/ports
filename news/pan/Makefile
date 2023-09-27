COMMENT=		powerful newsreader

GNOME_PROJECT=		pan
GNOME_VERSION=		v0.153
PKGNAME=		${GNOME_PROJECT}-${GNOME_VERSION:S/v//}
REVISION=		0

# override gnome MODULE
SITES=		https://gitlab.gnome.org/GNOME/pan/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz

CATEGORIES=		news x11

HOMEPAGE=		http://pan.rebelbase.com/

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE=		Yes


WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject enchant-2
WANTLIB += gck-1 gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmime-3.0 gmodule-2.0 gnutls gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtkspell3-3 harfbuzz iconv intl m notify p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 secret-1 z

MODULES=		x11/gnome

COMPILER=		base-clang ports-gcc base-gcc

MODGNOME_LDFLAGS=	-L${LOCALBASE}/lib -liconv
MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/itstool

LIB_DEPENDS=		devel/libnotify \
			mail/gmime30 \
			security/gnutls \
			textproc/gtkspell3 \
			x11/gnome/gcr

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--enable-libnotify \
			--enable-gkr \
			--with-gnutls

.include <bsd.port.mk>
