# $OpenBSD: Makefile,v 1.2 2012/05/23 15:13:20 jasper Exp $

COMMENT =	Cairo-backed Canvas implementation for Node.JS

NPM_VERSION =	0.12.0
NPM_NAME =	canvas
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/learnboost/node-canvas

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += c cairo drm expat fontconfig freetype gif glib-2.0
WANTLIB += gobject-2.0 jpeg pcre pixman-1 png pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES =		devel/gettext \
			lang/node

LIB_DEPENDS =		graphics/cairo \
			graphics/jpeg \
			graphics/libungif

CONFIGURE_STYLE =	npm ext

# needs mocha
NO_REGRESS =		Yes

.include <bsd.port.mk>
