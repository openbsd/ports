# $OpenBSD: Makefile,v 1.7 2018/04/30 15:25:58 bluhm Exp $

COMMENT =	use Cpanel::JSON::XS or JSON::XS or JSON::PP

DISTNAME =	JSON-MaybeXS-1.004000

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Cpanel-JSON-XS>=2.3310

PKG_ARCH =		*

.include <bsd.port.mk>
