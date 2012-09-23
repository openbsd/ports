# $OpenBSD: Makefile,v 1.4 2012/09/23 17:29:47 jasper Exp $

COMMENT =	Cairo-backed Canvas implementation for Node.js

NPM_VERSION =	0.13.1
NPM_NAME =	canvas
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/learnboost/node-canvas

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes


MODULES =		devel/gettext \
			lang/node

LIB_DEPENDS =		devel/pango \
			graphics/cairo \
			graphics/jpeg \
			graphics/libungif

CONFIGURE_STYLE =	npm ext

# needs mocha
NO_REGRESS =		Yes

.include <bsd.port.mk>
