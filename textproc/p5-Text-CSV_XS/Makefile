# $OpenBSD: Makefile,v 1.30 2020/07/03 21:45:50 sthen Exp $

COMMENT =	comma-separated values manipulation routines

DISTNAME =	Text-CSV_XS-1.41
CATEGORIES =	textproc
EXTRACT_SUFX =	.tgz
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

MODULES =	cpan

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
