# $OpenBSD: Makefile,v 1.13 2015/07/16 23:57:21 ajacoutot Exp $

COMMENT =		meatier versions of caller

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		Devel-Caller-2.06
CATEGORIES =		devel
CPAN_AUTHOR =		RCLAMP
REVISION =		1

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =		devel/p5-PadWalker

.include <bsd.port.mk>
