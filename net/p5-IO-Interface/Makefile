# $OpenBSD: Makefile,v 1.1.1.1 2002/07/18 06:17:50 kevlo Exp $

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

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
