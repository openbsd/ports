# $OpenBSD: Makefile,v 1.5 2004/06/26 07:35:09 xsa Exp $

COMMENT=	"interface to HMAC Message-Digest Algorithms"

DISTNAME=	Digest-HMAC-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

RUN_DEPENDS=	:p5-Digest-SHA1->=1:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
