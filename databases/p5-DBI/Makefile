# $OpenBSD: Makefile,v 1.43 2006/12/23 15:54:00 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"unified perl interface for database access"

MODULES=	cpan
DISTNAME=	DBI-1.52
PKGNAME=	p5-${DISTNAME}p0
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
