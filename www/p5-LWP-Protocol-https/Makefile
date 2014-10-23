# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:33:22 nigel Exp $

COMMENT =	adds support for https to p5-libwww

DISTNAME =	LWP-Protocol-https-6.06
CATEGORIES =	www net security

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	net/p5-Net-HTTP>=6 \
		security/p5-Mozilla-CA-Fake>=20110101 \
		www/p5-libwww>=6.06

# p5-Net-HTTP requires either p5-IO-Socket-SSL
# or p5-Crypt-SSLeay ensure p5-IO-Socket-SSL
# is present
BUILD_DEPENDS =	security/p5-IO-Socket-SSL>=1.54 \
		${RUN_DEPENDS}

.include <bsd.port.mk>
