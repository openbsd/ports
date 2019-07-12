# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:54 sthen Exp $

COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Model-DBI-0.20
REVISION=	1
CATEGORIES=	www databases

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
