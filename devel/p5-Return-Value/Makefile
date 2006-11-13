# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:10:03 espie Exp $

COMMENT= 	"polymorphic return values"

MODULES=	cpan 

DISTNAME=	Return-Value-1.301
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/R/RJ/RJBS/}

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes
.include <bsd.port.mk>
