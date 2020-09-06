# $OpenBSD: Makefile,v 1.12 2020/09/06 22:46:50 cwen Exp $

COMMENT =	use Cpanel::JSON::XS or JSON::XS or JSON::PP

DISTNAME =	JSON-MaybeXS-1.004002
FIX_EXTRACT_PERMISSIONS =	Yes
REVISION =	0

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Cpanel-JSON-XS>=2.3310
TEST_DEPENDS =		devel/p5-Test-Needs>=0.002006

PKG_ARCH =		*

.include <bsd.port.mk>
