# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:27 espie Exp $

COMMENT =		add/extend SSL support for common perl modules

DISTNAME =		Net-SSLGlue-1.01

CATEGORIES =		security net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-IO-Socket-SSL>=1.19

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
