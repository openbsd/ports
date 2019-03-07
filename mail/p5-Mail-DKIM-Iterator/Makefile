# $OpenBSD: Makefile,v 1.4 2019/03/07 10:30:00 bluhm Exp $

COMMENT =	iterative DKIM validation of records or signing of mails

DISTNAME =	Mail-DKIM-Iterator-1.007

CATEGORIES =	mail

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		security/p5-Crypt-OpenSSL-RSA

PKG_ARCH =		*

.include <bsd.port.mk>
