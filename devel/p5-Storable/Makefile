# $OpenBSD: Makefile,v 1.13 2002/11/27 21:36:43 pvalchev Exp $

IGNORE=		"comes with ${OPSYS} as of release 3.3"

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

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
