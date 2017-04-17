# $OpenBSD: Makefile,v 1.3 2017/04/17 16:47:51 fcambus Exp $

COMMENT =	fuzzy text selector for the terminal

GH_ACCOUNT =	jhawthorn
GH_PROJECT =	fzy
GH_TAGNAME =	0.9

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MAKE_ENV =	CC=${CC} \
		BINDIR="${PREFIX}/bin" \
		MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
