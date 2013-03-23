# $OpenBSD: Makefile,v 1.10 2013/03/23 14:17:44 benoit Exp $

COMMENT =		meatier versions of caller

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		Devel-Caller-2.06
CATEGORIES =		devel
CPAN_AUTHOR =		RCLAMP

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =		devel/p5-PadWalker

pre-configure:
	@rm -f ${WRKSRC}/lib/Devel/Caller.pm.orig

.include <bsd.port.mk>
