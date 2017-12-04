# $OpenBSD: Makefile,v 1.5 2017/12/04 17:56:27 espie Exp $

COMMENT =	use Cpanel::JSON::XS or JSON::XS or JSON::PP

DISTNAME =	JSON-MaybeXS-1.003009

CATEGORIES =	converters
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Cpanel-JSON-XS>=2.3310

PKG_ARCH =		*

.include <bsd.port.mk>
