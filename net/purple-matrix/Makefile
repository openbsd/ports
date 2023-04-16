COMMENT =		libpurple plugin for connecting to Matrix network

DISTNAME =		purple-matrix-0.20230207

GH_ACCOUNT =		matrix-org
GH_PROJECT =		purple-matrix
GH_COMMIT =		91021c8d3bff295d92ae731df576a1db6af75f9d

CATEGORIES =		net

HOMEPAGE =		https://github.com/matrix-org/purple-matrix

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =	yes

LIB_DEPENDS +=	devel/http-parser \
		devel/json-glib \
		net/pidgin,-libpurple

WANTLIB +=	glib-2.0 gio-2.0 gobject-2.0 http_parser intl
WANTLIB +=	json-glib-1.0 sqlite3 purple

MAKE_ENV =	MATRIX_NO_E2E=y

NO_TEST =	Yes

.include <bsd.port.mk>
