# $OpenBSD: Makefile,v 1.10 2002/09/20 02:10:36 kevlo Exp $

COMMENT=	"persistency for perl data structures"

DISTNAME=	Storable-2.04
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

.include <bsd.port.mk>
