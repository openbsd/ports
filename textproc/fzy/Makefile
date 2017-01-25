# $OpenBSD: Makefile,v 1.2 2017/01/25 23:25:51 fcambus Exp $

COMMENT =	fuzzy text selector for the terminal

GH_ACCOUNT =	jhawthorn
GH_PROJECT =	fzy
GH_TAGNAME =	0.8

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MAKE_ENV =	BINDIR="${PREFIX}/bin" \
		MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
