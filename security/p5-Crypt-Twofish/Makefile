# $OpenBSD: Makefile,v 1.3 2001/05/10 19:20:50 naddy Exp $

COMMENT=	"module to implement the Twofish cipher"

DISTNAME=	Twofish-1.0
PKGNAME=	p5-Crypt-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.407

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Crypt

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/Crypt/Twofish

.include <bsd.port.mk>	
