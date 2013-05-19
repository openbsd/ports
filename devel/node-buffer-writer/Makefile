# $OpenBSD: Makefile,v 1.1.1.1 2013/05/19 14:26:39 abieber Exp $

PKG_ARCH =	*

COMMENT =	a fast, efficient buffer writer for nodejs

NPM_VERSION =	1.0.0
NPM_NAME =	buffer-writer
PKGNAME =	buffer-writer-${NPM_VERSION}
CATEGORIES =	devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/brianc/node-buffer-writer

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/node

RUN_DEPENDS 	=	devel/node-cloned \
			devel/node-async

BUILD_DEPENDS	=	${RUN_DEPENDS}
MODNODE_DEPENDS =	cloned async

CONFIGURE_STYLE =	npm

NO_TEST =	Yes

.include <bsd.port.mk>
