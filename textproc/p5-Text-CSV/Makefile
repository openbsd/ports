# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:44 espie Exp $

COMMENT=	comma-separated values manipulation routines

MODULES=	cpan
DISTNAME=	Text-CSV-1.21
REVISION=	0
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
RUN_DEPENDS=	textproc/p5-Text-CSV_XS
.endif
