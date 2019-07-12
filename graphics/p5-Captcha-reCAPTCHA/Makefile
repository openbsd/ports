# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:05 sthen Exp $

COMMENT =	Perl implementation of the reCAPTCHA API

MODULES =	cpan
PKG_ARCH =	*
V =		0.99
NAME =		Captcha
DISTNAME =	${NAME}-re${NAME}-$V
PKGNAME =	p5-${NAME}-re${NAME:U}-$V
CATEGORIES =	graphics security

# Perl
PERMIT_PACKAGE =		Yes

CPAN_AUTHOR =			SUNNYP
MODCPAN_EXAMPLES =		Yes

WRKDIST =	${WRKDIR}/${NAME}-re${NAME}

RUN_DEPENDS =	www/p5-HTML-Tiny \
		www/p5-libwww

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
