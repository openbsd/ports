# $OpenBSD: Makefile,v 1.2 2010/10/18 18:13:14 espie Exp $

COMMENT =	Perl implementation of the reCAPTCHA API

MODULES =	cpan
DISTNAME =	Captcha-reCAPTCHA-0.92
CATEGORIES =	graphics security
USE_GROFF =	Yes

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
