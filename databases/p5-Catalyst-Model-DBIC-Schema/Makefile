# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:50 simon Exp $

COMMENT= 	"model class for catalyst"

DISTNAME=	Catalyst-Model-DBIC-Schema-0.18
PKGNAME=	p5-${DISTNAME}p1
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

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
