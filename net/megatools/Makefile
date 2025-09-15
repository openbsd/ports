PORTROACH =		limit:[0-9]\.tar\.gz

COMMENT =		command line client application for Mega

DISTNAME =		megatools-1.11.5.20250706

CATEGORIES =		net

HOMEPAGE =		https://xff.cz/megatools/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curl gio-2.0 glib-2.0 gobject-2.0

SITES =			https://xff.cz/megatools/builds/

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c
BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/asciidoc \
			textproc/docbook2x
LIB_DEPENDS =		devel/glib2 \
			net/curl

MODULES =		devel/meson

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# tests require network access
NO_TEST =		Yes

.include <bsd.port.mk>
