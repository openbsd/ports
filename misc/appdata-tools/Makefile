# $OpenBSD: Makefile,v 1.5 2014/07/09 11:32:09 ajacoutot Exp $

COMMENT =		AppData tools

DISTNAME =		appdata-tools-0.1.7
REVISION =		1

CATEGORIES =		misc

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://people.freedesktop.org/~hughsient/releases/
EXTRACT_SUFX =		.tar.xz

WANTLIB += c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre png pthread soup-2.4 sqlite3 xml2
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS =		devel/libsoup \
			graphics/gdk-pixbuf2

CONFIGURE_STYLE =	gnu

# requires jing-trang
CONFIGURE_ARGS =	--disable-schemas

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
