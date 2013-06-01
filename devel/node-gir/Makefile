# $OpenBSD: Makefile,v 1.6 2013/06/01 14:19:31 landry Exp $

COMMENT =	GObject Introspection bindings for Node.js

NPM_VERSION =	0.1.0
NPM_NAME =	gir
CATEGORIES =	devel

REVISION = 2

HOMEPAGE =	https://github.com/creationix/node-gir

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext \
			lang/node

WANTLIB += crypto girepository-1.0 glib-2.0 gobject-2.0 pthread
WANTLIB += ssl z

LIB_DEPENDS =		devel/gobject-introspection

CONFIGURE_STYLE =	npm ext

NO_TEST =		Yes

.include <bsd.port.mk>
