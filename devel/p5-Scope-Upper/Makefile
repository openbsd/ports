# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:21 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	act on upper scopes

MODULES =	cpan
DISTNAME =	Scope-Upper-0.14
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

CPAN_AUTHOR =	VPIT

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	samples
MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
