# $OpenBSD: Makefile,v 1.8 2002/10/29 02:30:45 kevlo Exp $

COMMENT=	"module for creating generic methods"

DISTNAME=	Class-MethodMaker-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>	
