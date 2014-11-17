# $OpenBSD: Makefile,v 1.7 2014/11/17 07:36:30 benoit Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
