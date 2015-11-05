# $OpenBSD: Makefile,v 1.10 2015/11/05 19:08:56 jca Exp $

COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBI-0.20
REVISION=	1
CATEGORIES=	www databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
