# $OpenBSD: Makefile,v 1.6 2018/02/03 18:19:28 bluhm Exp $

COMMENT =	use Cpanel::JSON::XS or JSON::XS or JSON::PP

DISTNAME =	JSON-MaybeXS-1.003010

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Cpanel-JSON-XS>=2.3310

PKG_ARCH =		*

.include <bsd.port.mk>
