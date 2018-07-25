# $OpenBSD: Makefile,v 1.27 2018/07/25 18:07:12 jasper Exp $

COMMENT =	comma-separated values manipulation routines

DISTNAME =	Text-CSV_XS-1.36
CATEGORIES =	textproc
EXTRACT_SUFX =	.tgz

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
