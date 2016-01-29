# $OpenBSD: Makefile,v 1.24 2016/01/29 12:29:35 bluhm Exp $

COMMENT =		provide framework for multiple event loops

DISTNAME =		AnyEvent-7.12
EPOCH =			0
CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-EV>=4.00
TEST_DEPENDS =		converters/p5-JSON-XS>=2.2 \
			converters/p5-JSON>=2.09 \
			devel/p5-Glib2 \
			devel/p5-Guard>=1.02 \
			devel/p5-POE \
			devel/p5-Task-Weaken \
			security/p5-Net_SSLeay>=1.33

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
