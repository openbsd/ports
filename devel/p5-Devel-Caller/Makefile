# $OpenBSD: Makefile,v 1.7 2010/12/27 11:02:05 jasper Exp $

COMMENT =		meatier versions of caller

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		Devel-Caller-2.05
CATEGORIES =		devel
CPAN_AUTHOR =		RCLAMP

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-PadWalker

pre-configure:
	@rm -f ${WRKSRC}/lib/Devel/Caller.pm.orig

.include <bsd.port.mk>
