# $OpenBSD: Makefile,v 1.12 2002/10/30 04:38:12 pvalchev Exp $

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
