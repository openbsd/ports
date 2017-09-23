# $OpenBSD: Makefile,v 1.6 2017/09/23 10:51:07 sthen Exp $

COMMENT =	walk all of perl memory arena

MODULES =	cpan
DISTNAME =	Devel-Gladiator-0.04
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>
REVISION =	2

TEST_DEPENDS =	devel/p5-PadWalker
# perl
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += c perl

.include <bsd.port.mk>
