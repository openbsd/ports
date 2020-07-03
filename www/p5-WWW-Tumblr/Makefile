# $OpenBSD: Makefile,v 1.13 2020/07/03 21:46:07 sthen Exp $

COMMENT =		Perl interface for the Tumblr API

DISTNAME =		WWW-Tumblr-5.3
CATEGORIES =		www
REVISION =		0

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
