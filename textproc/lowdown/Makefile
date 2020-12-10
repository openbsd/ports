# $OpenBSD: Makefile,v 1.23 2020/12/10 08:28:12 fcambus Exp $

COMMENT =	simple markdown translator
DISTNAME =	lowdown-0.7.4
CATEGORIES =	textproc

HOMEPAGE =	https://kristaps.bsd.lv/lowdown/
MAINTAINER =	Bryan Vyhmeister <bryan@bsdjournal.net>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://kristaps.bsd.lv/lowdown/snapshots/

# uses pledge()
WANTLIB +=	c m

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${PREFIX}"

ALL_TARGET =	lowdown

NO_TEST =	Yes

.include <bsd.port.mk>
