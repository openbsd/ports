# $OpenBSD: Makefile,v 1.14 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		perl5 extra list utilities

DISTNAME =		List-MoreUtils-0.33
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MODULES =		cpan
REGRESS_DEPENDS =	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
