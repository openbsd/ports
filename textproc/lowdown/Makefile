# $OpenBSD: Makefile,v 1.27 2021/10/27 21:55:07 fcambus Exp $

COMMENT =	simple markdown translator
DISTNAME =	lowdown-0.9.2
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

TEST_TARGET =	regress

.include <bsd.port.mk>
