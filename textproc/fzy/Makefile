# $OpenBSD: Makefile,v 1.6 2020/01/21 17:30:21 fcambus Exp $

COMMENT =	fuzzy text selector for the terminal

V =		1.0
DISTNAME =	fzy-$V
REVISION =	0

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/jhawthorn/fzy

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MASTER_SITES =	https://github.com/jhawthorn/fzy/releases/download/$V/

MAKE_ENV =	CC=${CC} BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
