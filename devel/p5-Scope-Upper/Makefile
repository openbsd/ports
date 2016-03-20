# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:34 naddy Exp $

COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.28
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
