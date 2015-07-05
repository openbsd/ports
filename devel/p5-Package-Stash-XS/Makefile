# $OpenBSD: Makefile,v 1.6 2015/07/05 15:36:41 afresh1 Exp $

SHARED_ONLY =	Yes

COMMENT =	faster and more correct implementation of Package::Stash
DISTNAME =	Package-Stash-XS-0.28
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
