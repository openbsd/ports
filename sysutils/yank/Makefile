# $OpenBSD: Makefile,v 1.1.1.1 2017/03/11 17:59:31 fcambus Exp $

COMMENT =	yank terminal output to clipboard

GH_ACCOUNT =	mptre
GH_PROJECT =	yank
GH_TAGNAME =	v0.8.2

CATEGORIES =	sysutils

MAINTAINER =	Anton Lindqvist <anton.lindqvist@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c

RUN_DEPENDS =	x11/xsel

FAKE_FLAGS =	MANPREFIX=${PREFIX}/man

NO_TEST =	Yes

.include <bsd.port.mk>
