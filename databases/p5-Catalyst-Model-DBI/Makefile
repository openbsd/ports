# $OpenBSD: Makefile,v 1.1.1.1 2007/06/08 17:17:21 simon Exp $

COMMENT= 	"DBI model class for Catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Model-DBI-0.19
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBI \
		::www/p5-Catalyst-Runtime

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
