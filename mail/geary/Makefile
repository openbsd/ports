COMMENT=		email application built around conversations

GNOME_PROJECT=		geary
GNOME_VERSION=		46.0
REVISION=		1

CATEGORIES=		mail

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo enchant-2 folks gck-1 gcr-base-3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmime-3.0 goa-1.0
WANTLIB += gobject-2.0 gsound gspell-1 gtk-3 handy-1 icuuc intl
WANTLIB += javascriptcoregtk-4.1 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += peas-1.0 secret-1 soup-3.0 sqlite3 stemmer webkit2gtk-4.1
WANTLIB += xml2 ytnef

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_ARGS=		-Dprofile=release \
			-Diso_639_xml=${LOCALBASE}/share/xml/iso-codes/iso_639.xml \
			-Diso_3166_xml=${LOCALBASE}/share/xml/iso-codes/iso_3166.xml \
			-Dlibunwind=disabled \
			-Dvaladoc=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CFLAGS_base-clang=	-Wno-error=int-conversion

RUN_DEPENDS=		devel/iso-codes

BUILD_DEPENDS=		devel/appstream-glib \
			devel/iso-codes

LIB_DEPENDS=		audio/gsound \
			converters/libytnef \
			databases/sqlite3 \
			devel/libgee \
			devel/libpeas \
			mail/gmime30 \
			net/telepathy/folks \
			textproc/gspell \
			textproc/libstemmer \
			www/webkitgtk4,webkitgtk41 \
			x11/gnome/gcr \
			x11/gnome/online-accounts \
			x11/libhandy

.include <bsd.port.mk>
