# $OpenBSD: Makefile,v 1.3 2004/01/17 15:58:09 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"module for access to network card configuration information"

DISTNAME=	IO-Interface-0.97
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
