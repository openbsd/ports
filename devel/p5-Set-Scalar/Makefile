# $OpenBSD: Makefile,v 1.5 2002/05/13 18:50:41 espie Exp $

COMMENT=	"module for containing a set of scalars"

DISTNAME=	Set-Scalar-1.17
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 
NEED_VERSION=	1.502

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Set/}

CONFIGURE_STYLE= perl

REGRESS_TARGET=	test
REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
