# $OpenBSD: Makefile,v 1.9 2020/05/15 20:46:35 bluhm Exp $

COMMENT =	use Cpanel::JSON::XS or JSON::XS or JSON::PP

DISTNAME =	JSON-MaybeXS-1.004001

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Cpanel-JSON-XS>=2.3310

PKG_ARCH =		*

.include <bsd.port.mk>
