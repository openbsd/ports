# $OpenBSD: Makefile,v 1.8 2019/07/12 21:07:45 sthen Exp $

COMMENT =	walk all of perl memory arena

MODULES =	cpan
DISTNAME =	Devel-Gladiator-0.07
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>

TEST_DEPENDS =	devel/p5-PadWalker
# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

.include <bsd.port.mk>
