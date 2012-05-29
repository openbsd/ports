# $OpenBSD: Makefile,v 1.1.1.1 2012/05/29 11:29:35 jasper Exp $

COMMENT =	add-on for creating *nix daemons

NPM_VERSION =	0.5.1
NPM_NAME =	daemon
CATEGORIES =	sysutils devel

HOMEPAGE =	https://github.com/indexzero/daemon.node/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

# Needs a new devel/node-vows
NO_REGRESS =	Yes

.include <bsd.port.mk>
