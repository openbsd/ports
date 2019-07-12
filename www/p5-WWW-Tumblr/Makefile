# $OpenBSD: Makefile,v 1.12 2019/07/12 21:15:36 sthen Exp $

COMMENT =		Perl interface for the Tumblr API

DISTNAME =		WWW-Tumblr-5.3
CATEGORIES =		www

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		converters/p5-JSON \
			devel/p5-Moose \
			net/p5-Net-OAuth \
			www/p5-HTTP-Message \
			www/p5-libwww

# Tests require network access

.include <bsd.port.mk>
