# $OpenBSD: Makefile,v 1.26 2016/09/23 18:41:14 bluhm Exp $

COMMENT =		provide framework for multiple event loops

DISTNAME =		AnyEvent-7.13
EPOCH =			0
CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-EV>=4.00
TEST_DEPENDS =		converters/p5-JSON-XS>=2.2 \
			converters/p5-JSON>=2.09 \
			devel/p5-Glib2 \
			devel/p5-Guard>=1.02 \
			devel/p5-POE \
			devel/p5-Task-Weaken \
			security/p5-Net_SSLeay>=1.33

MAKE_ENV =		PERL_ANYEVENT_LOOP_TESTS=1

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
