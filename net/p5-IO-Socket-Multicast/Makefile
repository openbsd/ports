# $OpenBSD: Makefile,v 1.1.1.1 2002/07/18 06:18:57 kevlo Exp $

COMMENT=	"module for sending and receiving multicast messages"

DISTNAME=	IO-Socket-Multicast-0.25
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

BUILD_DEPENDS=	:p5-IO-Interface->=0.97:net/p5-IO-Interface
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
