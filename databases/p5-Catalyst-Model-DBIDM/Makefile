# $OpenBSD: Makefile,v 1.1.1.1 2007/11/24 12:29:34 simon Exp $

COMMENT=	DBIx::DataModel model class

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBIDM-0.02
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

.include <bsd.port.mk>
