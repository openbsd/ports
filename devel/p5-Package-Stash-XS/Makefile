# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:03 sthen Exp $

COMMENT =	faster and more correct implementation of Package::Stash
DISTNAME =	Package-Stash-XS-0.29
CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
