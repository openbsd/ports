# $OpenBSD: Makefile,v 1.52 2010/10/18 17:06:08 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.609
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

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
