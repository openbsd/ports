# $OpenBSD: Makefile,v 1.11 2002/10/29 01:59:14 kevlo Exp $

COMMENT=	"persistency for perl data structures"

DISTNAME=	Storable-2.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Storable/}

BUILD_DEPENDS=	:p5-Test-Simple-*:devel/p5-Test-Simple
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
