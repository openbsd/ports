# $OpenBSD: Makefile,v 1.1.1.1 2007/11/22 19:43:40 simon Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
DISTNAME=	DBIx-DataModel-0.35
CATEGORIES=	databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBI \
		::databases/p5-SQL-Abstract
REGRESS_DEPENDS=::databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

pre-configure:
	mv ${WRKSRC}/Build.pl ${WRKSRC}/Build.PL

.include <bsd.port.mk>
