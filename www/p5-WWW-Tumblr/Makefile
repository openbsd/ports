# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:23 naddy Exp $

COMMENT =		Perl interface for the Tumblr API

DISTNAME =		WWW-Tumblr-5.2
CATEGORIES =		www

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE_CDROM = 	Yes

RUN_DEPENDS =		www/p5-libwww \
			devel/p5-Moose \
			net/p5-Net-OAuth

.include <bsd.port.mk>
