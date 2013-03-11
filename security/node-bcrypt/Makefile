# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:26 espie Exp $

COMMENT =	bcrypt hashing library for Node.js

NPM_VERSION =	0.6.0
NPM_NAME =	bcrypt
REVISION =	1
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/ncb000gt/node.bcrypt.js

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp

# needs nodeunit
NO_TEST =	Yes

.include <bsd.port.mk>
