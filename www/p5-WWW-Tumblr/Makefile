# $OpenBSD: Makefile,v 1.11 2019/05/30 02:11:16 cwen Exp $

COMMENT =		Perl interface for the Tumblr API

DISTNAME =		WWW-Tumblr-5.3
CATEGORIES =		www

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE_CDROM = 	Yes

RUN_DEPENDS =		converters/p5-JSON \
			devel/p5-Moose \
			net/p5-Net-OAuth \
			www/p5-HTTP-Message \
			www/p5-libwww

# Tests require network access

.include <bsd.port.mk>
