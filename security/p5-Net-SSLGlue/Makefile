# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:08 sthen Exp $

COMMENT =		add/extend SSL support for common perl modules

DISTNAME =		Net-SSLGlue-1.058

CATEGORIES =		security net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-IO-Socket-SSL>=1.19

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
