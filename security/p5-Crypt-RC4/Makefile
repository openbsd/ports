# $OpenBSD: Makefile,v 1.2 2002/05/15 17:58:50 espie Exp $

COMMENT=	"implementation of the RC4 encryption algorithm"

DISTNAME=	Crypt-RC4-2.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.504

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

CONFIGURE_STYLE= perl

REGRESS_TARGET=	test

.include <bsd.port.mk>	
