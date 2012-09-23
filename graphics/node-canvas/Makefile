# $OpenBSD: Makefile,v 1.5 2012/09/23 17:30:16 jasper Exp $

COMMENT =	Cairo-backed Canvas implementation for Node.js

NPM_VERSION =	0.13.1
NPM_NAME =	canvas
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/learnboost/node-canvas

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xrender cairo crypto expat fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 pixman-1 png pthread pthread-stubs
WANTLIB += ssl xcb xcb-render xcb-shm z

MODULES =		devel/gettext \
			lang/node

LIB_DEPENDS =		devel/pango \
			graphics/cairo \
			graphics/jpeg \
			graphics/libungif

CONFIGURE_STYLE =	npm ext

# needs mocha
NO_REGRESS =		Yes

.include <bsd.port.mk>
