# $OpenBSD: Makefile,v 1.1.1.1 2012/07/17 09:55:59 jasper Exp $

COMMENT =	GObject Introspection bindings for Node.js

NPM_VERSION =	0.0.2
NPM_NAME =	gir
CATEGORIES =	devel

HOMEPAGE =	https://github.com/creationix/node-gir

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/gettext \
			lang/node

WANTLIB += ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pcre

LIB_DEPENDS =		devel/gobject-introspection

CONFIGURE_STYLE =	npm ext

NO_REGRESS =		Yes

.include <bsd.port.mk>
