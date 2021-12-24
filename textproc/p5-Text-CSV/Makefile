# $OpenBSD: Makefile,v 1.19 2021/12/24 04:01:33 afresh1 Exp $

COMMENT =	comma-separated values manipulator routines

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Text-CSV-2.01
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-Text-CSV_XS

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
