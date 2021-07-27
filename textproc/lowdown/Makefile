# $OpenBSD: Makefile,v 1.26 2021/07/27 10:51:48 sthen Exp $

COMMENT =	simple markdown translator
DISTNAME =	lowdown-0.8.5
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
