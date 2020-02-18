# $OpenBSD: Makefile,v 1.17 2020/02/18 09:30:55 benoit Exp $

COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.32
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
