# $OpenBSD: Makefile,v 1.2 2012/09/23 17:31:19 jasper Exp $

COMMENT =	run a Node.js process, restarting on file changes or crashes

NPM_VERSION =	2.0.0
NPM_NAME =	always
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/edwardhotchkiss/always

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm

# will need devel/node-vows
NO_REGRESS =		Yes

.include <bsd.port.mk>
