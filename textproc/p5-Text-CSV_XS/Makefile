# $OpenBSD: Makefile,v 1.31 2020/12/04 01:19:02 afresh1 Exp $

COMMENT =	Comma-Separated Values manipulation routines

DISTNAME =	Text-CSV_XS-1.44
CATEGORIES =	textproc
EXTRACT_SUFX =	.tgz

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

MODULES =	cpan

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
