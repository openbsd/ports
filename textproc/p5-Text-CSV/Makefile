# $OpenBSD: Makefile,v 1.9 2011/05/10 03:08:17 gsoares Exp $

COMMENT=	comma-separated values manipulation routines

MODULES=	cpan
DISTNAME=	Text-CSV-1.21
REVISION=	0
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
RUN_DEPENDS=	textproc/p5-Text-CSV_XS
.endif
