# $OpenBSD: Makefile,v 1.55 2010/12/03 11:44:24 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.609
REVISION=	1
CATEGORIES=	databases
USE_GROFF =	Yes

HOMEPAGE=	http://dbi.perl.org/
MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/p5-PlRPC>=0.2017
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
