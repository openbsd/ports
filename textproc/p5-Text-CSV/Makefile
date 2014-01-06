# $OpenBSD: Makefile,v 1.11 2014/01/06 22:41:32 jsg Exp $

COMMENT=	comma-separated values manipulation routines

MODULES=	cpan
DISTNAME=	Text-CSV-1.32
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
RUN_DEPENDS=	textproc/p5-Text-CSV_XS
.endif
