# $OpenBSD: Makefile,v 1.2 2002/10/29 02:15:21 kevlo Exp $

COMMENT=	"library of advanced math functions"

DISTNAME=	Bit-Vector-6.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Bit/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
