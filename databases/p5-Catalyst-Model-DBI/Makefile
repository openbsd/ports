# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:05 espie Exp $

COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBI-0.20
REVISION=	0
CATEGORIES=	www databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1
USE_GROFF =	Yes

.include <bsd.port.mk>
