# $OpenBSD: Makefile,v 1.48 2008/10/02 20:34:39 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.604
PKGNAME=	p5-${DISTNAME}p0
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

.include <bsd.port.mk>
