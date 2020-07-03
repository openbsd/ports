# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:34 sthen Exp $

COMMENT=	DBIx::DataModel model class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Catalyst-Model-DBIDM-0.04
CATEGORIES=	databases
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBIx-DataModel \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
