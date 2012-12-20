# $OpenBSD: Makefile,v 1.4 2012/12/20 12:05:21 abieber Exp $

COMMENT =	GObject Introspection bindings for Node.js

NPM_VERSION =	0.1.0
NPM_NAME =	gir
CATEGORIES =	devel

REVISION = 1

HOMEPAGE =	https://github.com/creationix/node-gir

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/gettext \
			lang/node

WANTLIB += crypto girepository-1.0 glib-2.0 gobject-2.0 pthread
WANTLIB += ssl z

LIB_DEPENDS =		devel/gobject-introspection

CONFIGURE_STYLE =	npm ext

NO_REGRESS =		Yes

.include <bsd.port.mk>
