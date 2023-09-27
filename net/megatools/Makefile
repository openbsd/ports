PORTROACH =		limit:[0-9]\.tar\.gz

COMMENT =		command line client application for Mega

DISTNAME =		megatools-1.11.1.20230212

CATEGORIES =		net

HOMEPAGE =		https://megatools.megous.com/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curl gio-2.0 glib-2.0 gobject-2.0

SITES =			https://megatools.megous.com/builds/

COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/asciidoc \
			textproc/docbook2x
LIB_DEPENDS =		devel/glib2 \
			net/curl

MODULES =		devel/meson

# tests require network access
NO_TEST =		Yes

.include <bsd.port.mk>
