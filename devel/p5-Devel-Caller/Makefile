# $OpenBSD: Makefile,v 1.11 2014/06/14 23:24:55 sthen Exp $

COMMENT =		meatier versions of caller

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		Devel-Caller-2.06
CATEGORIES =		devel
CPAN_AUTHOR =		RCLAMP
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =		devel/p5-PadWalker

pre-configure:
	@rm -f ${WRKSRC}/lib/Devel/Caller.pm.orig

.include <bsd.port.mk>
