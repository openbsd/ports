# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:14 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	recursively copy Perl datatypes

MODULES=	cpan
DISTNAME=	Clone-0.34
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

TEST_DEPENDS=	devel/p5-Taint-Runtime

.include <bsd.port.mk>
