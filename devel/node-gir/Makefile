# $OpenBSD: Makefile,v 1.8 2013/11/05 16:26:05 abieber Exp $

COMMENT =	GObject Introspection bindings for Node.js

NPM_VERSION =	0.1.0
NPM_NAME =	gir
CATEGORIES =	devel

REVISION = 4

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
