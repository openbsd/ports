# $OpenBSD: Makefile,v 1.1.1.1 2014/03/27 10:24:46 jasper Exp $

COMMENT =		AppData tools

DISTNAME =		appdata-tools-0.1.7

CATEGORIES =		misc

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://people.freedesktop.org/~hughsient/releases/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext \
			textproc/intltool

WANTLIB += c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre png pthread soup-2.4 sqlite3 xml2
WANTLIB += z

BUILD_DEPENDS =		textproc/docbook-xsl
LIB_DEPENDS =		devel/libsoup \
			graphics/gdk-pixbuf2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GMAKE =		Yes

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
