# $OpenBSD: Makefile,v 1.12 2014/06/08 21:35:16 bluhm Exp $

COMMENT =		add/extend SSL support for common perl modules

DISTNAME =		Net-SSLGlue-1.053

CATEGORIES =		security net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-IO-Socket-SSL>=1.19

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
