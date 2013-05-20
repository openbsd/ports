# $OpenBSD: Makefile,v 1.2 2013/05/20 17:52:31 abieber Exp $

COMMENT =	clone a local or remote git repository at a revision.

NPM_VERSION =	0.0.1
NPM_NAME =	cloned
CATEGORIES =	devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/brianc/node-cloned

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/node

RUN_DEPENDS 	=	sysutils/node-rmdir
BUILD_DEPENDS	=	${RUN_DEPENDS}
MODNODE_DEPENDS =	rmdir

CONFIGURE_STYLE =	npm

NO_TEST =	Yes

.include <bsd.port.mk>
