# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:09 naddy Exp $

COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Model-DBI-0.20
REVISION=	1
CATEGORIES=	www databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
