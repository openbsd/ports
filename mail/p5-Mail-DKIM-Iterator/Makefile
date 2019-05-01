# $OpenBSD: Makefile,v 1.6 2019/05/01 21:52:00 bluhm Exp $

COMMENT =	iterative DKIM validation of records or signing of mails

DISTNAME =	Mail-DKIM-Iterator-1.009

CATEGORIES =	mail

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		security/p5-Crypt-OpenSSL-RSA

PKG_ARCH =		*

.include <bsd.port.mk>
