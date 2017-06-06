# $OpenBSD: Makefile,v 1.3 2017/06/06 08:15:50 anton Exp $

COMMENT =	yank terminal output to clipboard

GH_ACCOUNT =	mptre
GH_PROJECT =	yank
GH_TAGNAME =	v0.8.3

CATEGORIES =	sysutils

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c

RUN_DEPENDS =	x11/xsel

FAKE_FLAGS =	MANPREFIX=${PREFIX}/man

NO_TEST =	Yes

.include <bsd.port.mk>
