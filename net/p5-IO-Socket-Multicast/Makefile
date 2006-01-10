# $OpenBSD: Makefile,v 1.4 2006/01/10 09:00:29 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"module for sending and receiving multicast messages"

DISTNAME=	IO-Socket-Multicast-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

RUN_DEPENDS=	:p5-IO-Interface->=0.94:net/p5-IO-Interface
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
