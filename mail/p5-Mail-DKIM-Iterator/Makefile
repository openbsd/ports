# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:34 sthen Exp $

COMMENT =	iterative DKIM validation of records or signing of mails

DISTNAME =	Mail-DKIM-Iterator-1.009

CATEGORIES =	mail

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		security/p5-Crypt-OpenSSL-RSA

PKG_ARCH =		*

.include <bsd.port.mk>
