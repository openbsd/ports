# $OpenBSD: Makefile,v 1.10 2013/02/04 13:46:34 jasper Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to javascript

NPM_VERSION =	1.4.0
NPM_NAME =	coffee-script
PKGNAME =	coffeescript-${NPM_VERSION}
REVISION =	0
CATEGORIES =	lang

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	http://coffeescript.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/node

CONFIGURE_STYLE =	npm

NO_REGRESS =	Yes

.include <bsd.port.mk>
