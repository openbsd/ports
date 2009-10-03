# $OpenBSD: Makefile,v 1.50 2009/10/03 09:20:36 pea Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.609
CATEGORIES=	databases

HOMEPAGE=	http://dbi.perl.org/
MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PlRPC->=0.2017:net/p5-PlRPC
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
