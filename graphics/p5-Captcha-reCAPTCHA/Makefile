# $OpenBSD: Makefile,v 1.7 2014/12/28 09:06:54 benoit Exp $

COMMENT =	Perl implementation of the reCAPTCHA API

MODULES =	cpan
DISTNAME =	Captcha-reCAPTCHA-0.97
CATEGORIES =	graphics security

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	PHRED

RUN_DEPENDS =	www/p5-HTML-Tiny \
		www/p5-libwww

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
