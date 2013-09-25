# $OpenBSD: Makefile,v 1.12 2013/09/25 07:58:41 sthen Exp $

COMMENT =	Cairo-backed Canvas implementation for Node.js

NPM_VERSION =	1.0.0
NPM_NAME =	canvas
CATEGORIES =	graphics
REVISION =	2

HOMEPAGE =	https://github.com/learnboost/node-canvas

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# XXX some of the LIB_DEPENDS don't have associated entries here
WANTLIB += GL X11 Xrender cairo crypto expat fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 pixman-1 png pthread pthread-stubs
WANTLIB += ssl xcb xcb-render xcb-shm z

MODULES =		devel/gettext \
			lang/node

# used by package/util/has_lib.sh
BUILD_DEPENDS=		shells/bash
LIB_DEPENDS =		devel/pango \
			graphics/cairo \
			graphics/jpeg \
			graphics/giflib

CONFIGURE_STYLE =	npm ext

# needs mocha
NO_TEST =		Yes

.include <bsd.port.mk>
