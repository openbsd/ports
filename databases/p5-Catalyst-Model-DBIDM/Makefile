# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT=	DBIx::DataModel model class

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBIDM-0.03
REVISION=	0
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
