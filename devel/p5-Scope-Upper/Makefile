# $OpenBSD: Makefile,v 1.15 2018/04/28 14:12:50 ajacoutot Exp $

COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.30
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
