# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:08 sthen Exp $

COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.32
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
