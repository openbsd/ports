# $OpenBSD: Makefile,v 1.13 2016/03/13 15:49:16 naddy Exp $

COMMENT =	comma-separated values manipulation routines

MODULES =	cpan
DISTNAME =	Text-CSV-1.33
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-Text-CSV_XS

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
