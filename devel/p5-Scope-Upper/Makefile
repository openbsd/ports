# $OpenBSD: Makefile,v 1.14 2016/10/16 18:25:07 afresh1 Exp $

COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.29
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
