# $OpenBSD: Makefile,v 1.10 2002/07/16 01:45:13 kevlo Exp $

COMMENT=	"module for easy date and time manipulation"

DISTNAME=	Class-Date-1.1.0
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

HOMEPAGE=	http://dlux.sch.bme.hu/Class-Date/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
