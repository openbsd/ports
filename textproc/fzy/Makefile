# $OpenBSD: Makefile,v 1.1.1.1 2016/11/23 15:59:36 fcambus Exp $

COMMENT =	fuzzy text selector for the terminal

GH_ACCOUNT =	jhawthorn
GH_PROJECT =	fzy
GH_TAGNAME =	0.7

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MAKE_ENV =	BINDIR="${PREFIX}/bin" \
		MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
