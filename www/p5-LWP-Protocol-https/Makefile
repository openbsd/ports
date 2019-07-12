# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:56 sthen Exp $

COMMENT =	adds support for https to p5-libwww

DISTNAME =	LWP-Protocol-https-6.07
CATEGORIES =	www net security

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	net/p5-Net-HTTP>=6 \
		security/p5-IO-Socket-SSL>=1.54 \
		security/p5-Mozilla-CA-Fake>=20110101 \
		www/p5-libwww>=6.06

TEST_DEPENDS =	devel/p5-Test-RequiresInternet

.include <bsd.port.mk>
