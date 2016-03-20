# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:31 naddy Exp $

COMMENT =	faster and more correct implementation of Package::Stash
DISTNAME =	Package-Stash-XS-0.28
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
