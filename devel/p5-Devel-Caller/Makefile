# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:16 espie Exp $

COMMENT =		meatier versions of caller

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		Devel-Caller-2.05
REVISION =		0
CATEGORIES =		devel
CPAN_AUTHOR =		RCLAMP

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =		devel/p5-PadWalker

pre-configure:
	@rm -f ${WRKSRC}/lib/Devel/Caller.pm.orig

.include <bsd.port.mk>
