COMMENT=		read and post Usenet articles

GNOME_PROJECT=		pan
GNOME_VERSION=		0.161
EXTRACT_SUFX=		.tar.gz
REVISION=		0

WRKDIST=		${WRKDIR}/pan-v${GNOME_VERSION}-7e6f2f65a732871c059df2c6d93a565a46bae8e1

CATEGORIES=		news x11

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE=		Yes

SITES=			https://gitlab.gnome.org/GNOME/pan/-/archive/v${GNOME_VERSION}/

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject enchant-2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-3.0 gnutls
WANTLIB += gobject-2.0 gspell-1 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 z

MODULES=		devel/cmake \
			x11/gnome

COMPILER=		base-clang ports-gcc base-gcc

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		mail/gmime30 \
			security/gnutls \
			textproc/gspell \
			x11/gtk+3

.include <bsd.port.mk>
