# $OpenBSD: Makefile,v 1.37 2021/10/05 09:40:39 solene Exp $

COMMENT=	handy personal organizer

DISTNAME=	osmo-0.4.4
CATEGORIES=	productivity

HOMEPAGE=	https://clayo.org/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gringotts gthread-2.0 ical icalss icalvcal iconv intl
WANTLIB += lzma m notify pango-1.0 pangocairo-1.0 pthread
WANTLIB += archive enchant-2 gdk-3 gspell-1 gtk-3 z
WANTLIB += javascriptcoregtk-4.0 soup-2.4 webkit2gtk-4.0 xml2
WANTLIB += cairo-gobject harfbuzz

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=osmo-pim/}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	archivers/libarchive \
		devel/atk \
		devel/harfbuzz \
		devel/libnotify \
		devel/pango \
		security/libgringotts \
		textproc/gspell \
		textproc/libical \
		x11/gtk+3,-main \
		www/webkitgtk4

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--without-libsyncml

.include <bsd.port.mk>
