# $OpenBSD: Makefile,v 1.25 2016/03/20 19:57:09 naddy Exp $

COMMENT =	comma-separated values manipulation routines

DISTNAME =	Text-CSV_XS-1.19
CATEGORIES =	textproc
EXTRACT_SUFX =	.tgz

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	perl

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
