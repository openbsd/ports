# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:06 sthen Exp $

COMMENT =	comma-separated values manipulation routines

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Text-CSV-1.99
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-Text-CSV_XS

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
