# $OpenBSD: Makefile,v 1.5 2006/10/10 05:40:05 kevlo Exp $

SHARED_ONLY=	Yes

COMMENT=	"module for access to network card configuration information"

DISTNAME=	IO-Interface-1.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
