# $OpenBSD: Makefile,v 1.6 2012/05/23 15:13:20 jasper Exp $

COMMENT =	bcrypt hashing library for nodejs

NPM_VERSION =	0.5.0
NPM_NAME =	bcrypt
CATEGORIES =	security

REVISION =	2

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/ncb000gt/node.bcrypt.js

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

# needs nodeunit
NO_REGRESS =	Yes

.include <bsd.port.mk>
