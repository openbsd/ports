COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Model-DBI-0.32
CATEGORIES=	www databases

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-DBIx-Connector \
		www/p5-Catalyst-Runtime

# POD tests fail
MAKE_ENV+=	TEST_POD=0

.include <bsd.port.mk>
