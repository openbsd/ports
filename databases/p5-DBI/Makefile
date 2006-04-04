# $OpenBSD: Makefile,v 1.39 2006/04/04 08:34:31 bernd Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"unified perl interface for database access"

DISTNAME=	DBI-1.50
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBI/}

HOMEPAGE=	http://dbi.perl.org/index.html
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PlRPC->=0.2017:net/p5-PlRPC
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
