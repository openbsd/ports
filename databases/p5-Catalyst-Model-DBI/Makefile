# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:34 sthen Exp $

COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Model-DBI-0.20
REVISION=	2
CATEGORIES=	www databases

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
