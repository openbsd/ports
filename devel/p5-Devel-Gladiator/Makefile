# $OpenBSD: Makefile,v 1.7 2019/05/24 08:40:32 espie Exp $

COMMENT =	walk all of perl memory arena

MODULES =	cpan
DISTNAME =	Devel-Gladiator-0.07
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>

TEST_DEPENDS =	devel/p5-PadWalker
# perl
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += c perl

.include <bsd.port.mk>
