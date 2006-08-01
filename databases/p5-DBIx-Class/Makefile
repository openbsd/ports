# $OpenBSD: Makefile,v 1.1.1.1 2006/08/01 09:17:17 espie Exp $

COMMENT= 	"object-oriented database access"

DISTNAME=	DBIx-Class-0.06003
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

CONFIGURE_STYLE= perl modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	::devel/p5-Class-Data-Accessor \
		:p5-Data-Page->=2.00:databases/p5-Data-Page \
		::devel/p5-Class-C3 \
		::devel/p5-Carp-Clan \
		::databases/p5-SQL-Abstract \
		::databases/p5-SQL-Abstract-Limit \
		::databases/p5-DBI \
		::devel/p5-Data-UUID \


REGRESS_DEPENDS=${RUN_DEPENDS} \
		::databases/p5-DBD-SQLite \
		::devel/p5-Class-Inspector

MAKE_ENV=	DATA_DUMPER_TEST=Yes \
		DBICTEST_FORK_STRESS=Yes
PKG_ARCH=	*

.include <bsd.port.mk>
