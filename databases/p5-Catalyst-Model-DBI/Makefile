# $OpenBSD: Makefile,v 1.5 2010/10/18 17:06:07 espie Exp $

COMMENT= 	DBI model class for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBI-0.20
CATEGORIES=	www databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBI \
		::www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1
USE_GROFF =	Yes

.include <bsd.port.mk>
