# $OpenBSD: Makefile,v 1.8 2019/03/10 00:29:26 afresh1 Exp $

COMMENT =	faster and more correct implementation of Package::Stash
DISTNAME =	Package-Stash-XS-0.29
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
