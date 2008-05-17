# $OpenBSD: Makefile,v 1.2 2008/05/17 19:07:19 simon Exp $

COMMENT=	DBIx::DataModel model class

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBIDM-0.03
CATEGORIES=	databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBIx-DataModel \
		::www/p5-Catalyst-Runtime

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
