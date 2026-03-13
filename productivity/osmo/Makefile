COMMENT=	handy personal organizer

DISTNAME=	osmo-0.4.4
CATEGORIES=	productivity
REVISION=	5

HOMEPAGE=	https://clayo.org/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += archive atk-1.0 c cairo cairo-gobject enchant-2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gringotts gspell-1 gthread-2.0 gtk-3 harfbuzz ical
WANTLIB += icalss icalvcal iconv intl javascriptcoregtk-4.1 m
WANTLIB += notify pango-1.0 pangocairo-1.0 pthread soup-3.0 webkit2gtk-4.1
WANTLIB += xml2 z

SITES=		${SITE_SOURCEFORGE:=osmo-pim/}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	archivers/libarchive \
		devel/harfbuzz \
		devel/libnotify \
		devel/pango \
		security/libgringotts \
		textproc/gspell \
		textproc/libical \
		x11/gnome/at-spi2-core \
		x11/gtk+3,-main \
		www/webkitgtk4,webkitgtk41

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--without-libsyncml

.include <bsd.port.mk>
