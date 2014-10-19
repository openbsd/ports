# $OpenBSD: Makefile,v 1.18 2014/10/19 08:42:53 dcoppa Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to javascript

NPM_VERSION =	1.8.0
NPM_NAME =	coffee-script
PKGNAME =	coffeescript-${NPM_VERSION}
REVISION =	0
CATEGORIES =	lang

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	http://coffeescript.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

BUILD_DEPENDS =		archivers/gtar

# XXX: Works better than tar(1), but still prints metric truckloads of
# Ignoring unknown extended header keyword 'NODETAR.*'
TAR =			${LOCALBASE}/bin/gtar

CONFIGURE_STYLE =	npm

MODNODE_DEPENDS =	mkdirp

NO_TEST =		Yes

.include <bsd.port.mk>
