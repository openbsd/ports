# $OpenBSD: Makefile,v 1.1.1.1 2013/05/19 14:27:47 abieber Exp $

PKG_ARCH =	*

COMMENT =	clone a local or remote git repository at a revision.

NPM_VERSION =	0.0.1
NPM_NAME =	cloned
PKGNAME =	cloned-${NPM_VERSION}
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
