# $OpenBSD: Makefile,v 1.15 2014/03/12 14:32:28 jasper Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to javascript

NPM_VERSION =	1.7.1
NPM_NAME =	coffee-script
PKGNAME =	coffeescript-${NPM_VERSION}
CATEGORIES =	lang

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	http://coffeescript.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm

MODNODE_DEPENDS =	mkdirp

NO_TEST =		Yes

# XXX: Works better than tar(1), but still prints metric truckloads of
# Ignoring unknown extended header keyword 'NODETAR.*'
TAR =			${LOCALBASE}/bin/gtar

.include <bsd.port.mk>
