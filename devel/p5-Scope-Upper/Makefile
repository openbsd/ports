# $OpenBSD: Makefile,v 1.12 2015/08/24 12:53:00 benoit Exp $

SHARED_ONLY =	Yes
COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.28
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

CPAN_AUTHOR =		VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
