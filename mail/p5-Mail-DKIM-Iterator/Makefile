# $OpenBSD: Makefile,v 1.1.1.1 2019/02/12 13:17:01 bluhm Exp $

COMMENT =	iterative DKIM validation of records or signing of mails

DISTNAME =	Mail-DKIM-Iterator-1.003

CATEGORIES =	mail

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		security/p5-Crypt-OpenSSL-RSA

PKG_ARCH =		*

.include <bsd.port.mk>
