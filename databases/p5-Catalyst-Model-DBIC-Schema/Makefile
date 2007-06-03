# $OpenBSD: Makefile,v 1.5 2007/06/03 16:18:14 simon Exp $

COMMENT= 	"model class for catalyst"

DISTNAME=	Catalyst-Model-DBIC-Schema-0.20
CATEGORIES=	databases
MODULES=	cpan

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBIx-Class-Schema-Loader \
		::www/p5-Catalyst-Devel
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=Yes \
		C_M_DBIC_SCHEMA_TESTAPP=Yes

.include <bsd.port.mk>
