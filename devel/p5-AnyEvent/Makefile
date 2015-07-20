# $OpenBSD: Makefile,v 1.23 2015/07/20 23:09:38 bluhm Exp $

COMMENT =		provide framework for multiple event loops

DISTNAME =		AnyEvent-7.11
EPOCH =			0
CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-EV>=4.00
TEST_DEPENDS =		security/p5-Net_SSLeay>=1.33

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
