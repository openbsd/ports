# $OpenBSD: Makefile,v 1.42 2006/11/17 20:21:08 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"unified perl interface for database access"

MODULES=	cpan
DISTNAME=	DBI-1.52
CATEGORIES=	databases

HOMEPAGE=	http://dbi.perl.org/index.html
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PlRPC->=0.2017:net/p5-PlRPC
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
