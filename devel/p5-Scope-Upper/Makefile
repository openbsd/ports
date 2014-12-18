# $OpenBSD: Makefile,v 1.10 2014/12/18 07:49:58 benoit Exp $

SHARED_ONLY =	Yes
COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.25
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

CPAN_AUTHOR =	VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
