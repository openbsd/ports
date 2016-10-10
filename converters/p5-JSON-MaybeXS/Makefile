# $OpenBSD: Makefile,v 1.3 2016/10/10 17:13:05 bluhm Exp $

COMMENT =	use Cpanel::JSON::XS or JSON::XS or JSON::PP

DISTNAME =	JSON-MaybeXS-1.003008

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Cpanel-JSON-XS>=2.3310
# The JSON::PP module is in base Perl and our version is 2.27203_01.  This is
# older than 2.27300 required by JSON::MaybeXS, but the module runs anyway.

PKG_ARCH =		*

.include <bsd.port.mk>
