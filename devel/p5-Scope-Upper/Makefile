# $OpenBSD: Makefile,v 1.9 2014/06/14 23:24:58 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.14
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

CPAN_AUTHOR =	VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
