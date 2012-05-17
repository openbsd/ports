# $OpenBSD: Makefile,v 1.7 2012/05/17 08:05:05 jasper Exp $

COMMENT =	little language that compiles to javascript

NPM_VERSION =	1.3.3
NPM_NAME =	coffee-script
PKGNAME =	coffeescript-${NPM_VERSION}
CATEGORIES =	lang

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	http://coffeescript.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	www/node

CONFIGURE_STYLE =	npm

NO_REGRESS =	Yes

.include <bsd.port.mk>
