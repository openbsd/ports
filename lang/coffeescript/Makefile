# $OpenBSD: Makefile,v 1.20 2015/04/16 08:31:46 jasper Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to JavasSript

NPM_VERSION =	1.9.2
NPM_NAME =	coffee-script
PKGNAME =	coffeescript-${NPM_VERSION}
CATEGORIES =	lang

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	http://coffeescript.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm

NO_TEST =		Yes

.include <bsd.port.mk>
