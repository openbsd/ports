# $OpenBSD: Makefile,v 1.21 2014/12/11 22:21:59 bluhm Exp $

COMMENT =		provide framework for multiple event loops

DISTNAME =		AnyEvent-7.08
EPOCH =			0
CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MLEHMANN

MODULES =		cpan
TEST_DEPENDS =		security/p5-Net_SSLeay>=1.33

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
