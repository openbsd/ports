# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:20 naddy Exp $

COMMENT =		meatier versions of caller

MODULES =		cpan
DISTNAME =		Devel-Caller-2.06
CATEGORIES =		devel
CPAN_AUTHOR =		RCLAMP
REVISION =		1

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

RUN_DEPENDS =		devel/p5-PadWalker

.include <bsd.port.mk>
