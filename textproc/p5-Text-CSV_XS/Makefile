# $OpenBSD: Makefile,v 1.28 2019/07/12 20:50:06 sthen Exp $

COMMENT =	comma-separated values manipulation routines

DISTNAME =	Text-CSV_XS-1.36
CATEGORIES =	textproc
EXTRACT_SUFX =	.tgz

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

MODULES =	cpan

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
