# $OpenBSD: Makefile,v 1.15 2016/03/20 19:57:02 naddy Exp $

COMMENT =		add/extend SSL support for common perl modules

DISTNAME =		Net-SSLGlue-1.055

CATEGORIES =		security net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-IO-Socket-SSL>=1.19

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
