# $OpenBSD: Makefile,v 1.8 2015/01/21 14:05:45 sthen Exp $

COMMENT=	DBIx::DataModel model class

MODULES=	cpan
DISTNAME =	Catalyst-Model-DBIDM-0.04
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBIx-DataModel \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
