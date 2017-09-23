# $OpenBSD: Makefile,v 1.26 2017/09/23 10:51:07 sthen Exp $

COMMENT =	comma-separated values manipulation routines

DISTNAME =	Text-CSV_XS-1.19
CATEGORIES =	textproc
EXTRACT_SUFX =	.tgz
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
