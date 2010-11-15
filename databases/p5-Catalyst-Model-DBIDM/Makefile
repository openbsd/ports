# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:51 espie Exp $

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

RUN_DEPENDS=	databases/p5-DBIx-DataModel \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1
USE_GROFF =	Yes

.include <bsd.port.mk>
