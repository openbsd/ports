# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:09 naddy Exp $

COMMENT=	DBIx::DataModel model class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Catalyst-Model-DBIDM-0.04
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBIx-DataModel \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
