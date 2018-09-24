# $OpenBSD: Makefile,v 1.4 2018/09/24 07:12:43 fcambus Exp $

COMMENT =	fuzzy text selector for the terminal

V =		1.0
DISTNAME =	fzy-$V

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MASTER_SITES =	https://github.com/jhawthorn/fzy/releases/download/$V/

MAKE_ENV =	CC=${CC} BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
