# $OpenBSD: Makefile,v 1.1.1.1 2009/02/05 22:05:07 simon Exp $

COMMENT =	Perl implementation of the reCAPTCHA API

MODULES =	cpan
DISTNAME =	Captcha-reCAPTCHA-0.92
CATEGORIES =	graphics security

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	ANDYA

RUN_DEPENDS =	::www/p5-HTML-Tiny \
		::www/p5-libwww

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
