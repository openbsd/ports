# $OpenBSD: Makefile,v 1.33 2004/06/26 07:35:06 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"unified perl interface for database access"

DISTNAME=	DBI-1.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBI/}

HOMEPAGE=	http://dbi.perl.org/index.html
MAINTAINER=	Michael Coulter <mjc@bitz.ca>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PlRPC->=0.2017:net/p5-PlRPC
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
