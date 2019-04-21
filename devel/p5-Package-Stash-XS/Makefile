# $OpenBSD: Makefile,v 1.9 2019/04/21 17:54:17 cwen Exp $

COMMENT =	faster and more correct implementation of Package::Stash
DISTNAME =	Package-Stash-XS-0.29
CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
