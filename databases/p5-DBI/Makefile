# $OpenBSD: Makefile,v 1.30 2003/11/17 05:16:34 kevlo Exp $

COMMENT=	"unified perl interface for database access"

DISTNAME=	DBI-1.38
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBI/}

HOMEPAGE=	http://dbi.perl.org/index.html
MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-PlRPC->=0.2017:net/p5-PlRPC
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
