# $OpenBSD: Makefile,v 1.31 2020/07/03 21:44:39 sthen Exp $

COMMENT =	provide framework for multiple event loops

DISTNAME =	AnyEvent-7.17
EPOCH =		0
REVISION =	0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Canary-Stability
RUN_DEPENDS =		devel/p5-EV>=4.00
TEST_DEPENDS =		converters/p5-JSON-XS>=2.2 \
			converters/p5-JSON>=2.09 \
			devel/p5-Glib2 \
			devel/p5-Guard>=1.02 \
			devel/p5-POE \
			devel/p5-Task-Weaken \
			security/p5-Net_SSLeay>=1.33

MAKE_ENV =		PERL_ANYEVENT_LOOP_TESTS=1

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
