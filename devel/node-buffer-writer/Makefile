# $OpenBSD: Makefile,v 1.2 2013/05/20 17:52:07 abieber Exp $

COMMENT =	a fast, efficient buffer writer for nodejs

NPM_VERSION =	1.0.0
NPM_NAME =	buffer-writer
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
