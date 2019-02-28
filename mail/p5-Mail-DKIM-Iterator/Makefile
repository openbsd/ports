# $OpenBSD: Makefile,v 1.3 2019/02/28 14:16:37 bluhm Exp $

COMMENT =	iterative DKIM validation of records or signing of mails

DISTNAME =	Mail-DKIM-Iterator-1.006

CATEGORIES =	mail

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		security/p5-Crypt-OpenSSL-RSA

PKG_ARCH =		*

.include <bsd.port.mk>
