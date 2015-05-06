# $OpenBSD: Makefile,v 1.12 2015/05/06 00:40:25 afresh1 Exp $

COMMENT =	comma-separated values manipulation routines

MODULES =	cpan
DISTNAME =	Text-CSV-1.33
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mno_shared}
RUN_DEPENDS +=	textproc/p5-Text-CSV_XS
.endif

.include <bsd.port.mk>
