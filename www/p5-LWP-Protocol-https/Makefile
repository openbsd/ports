# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:21 naddy Exp $

COMMENT =	adds support for https to p5-libwww

DISTNAME =	LWP-Protocol-https-6.06
CATEGORIES =	www net security
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	net/p5-Net-HTTP>=6 \
		security/p5-IO-Socket-SSL>=1.54 \
		security/p5-Mozilla-CA-Fake>=20110101 \
		www/p5-libwww>=6.06

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
