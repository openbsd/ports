# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:43 naddy Exp $

COMMENT =	Perl implementation of the reCAPTCHA API

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Captcha-reCAPTCHA-0.97
CATEGORIES =	graphics security

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	PHRED

RUN_DEPENDS =	www/p5-HTML-Tiny \
		www/p5-libwww

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
