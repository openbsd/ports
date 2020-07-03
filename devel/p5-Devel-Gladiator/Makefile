# $OpenBSD: Makefile,v 1.9 2020/07/03 21:44:49 sthen Exp $

COMMENT =	walk all of perl memory arena

MODULES =	cpan
DISTNAME =	Devel-Gladiator-0.07
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>
REVISION =	0

TEST_DEPENDS =	devel/p5-PadWalker
# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

.include <bsd.port.mk>
