# $OpenBSD: Makefile,v 1.19 2013/03/06 07:28:00 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	recursively copy Perl datatypes

MODULES=	cpan
DISTNAME=	Clone-0.34
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

REGRESS_DEPENDS=	devel/p5-Taint-Runtime

.include <bsd.port.mk>
