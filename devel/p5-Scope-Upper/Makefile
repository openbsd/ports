# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:06 sthen Exp $

COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.30
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
