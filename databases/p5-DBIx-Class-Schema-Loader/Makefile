# $OpenBSD: Makefile,v 1.11 2007/11/27 22:08:18 simon Exp $

COMMENT= 	dynamic definition of a DBIx::Class::Schema

MODULES=	cpan
DISTNAME=	DBIx-Class-Schema-Loader-0.04003
CATEGORIES=	databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::devel/p5-Data-Dump \
		:p5-Universal-exports-<0.05|p5-Universal-require->=0.11:devel/p5-Universal-require \
		::textproc/p5-Lingua-EN-Inflect \
		::textproc/p5-Lingua-EN-Inflect-Number
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::databases/p5-DBD-SQLite
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
