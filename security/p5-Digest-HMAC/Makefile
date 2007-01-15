# $OpenBSD: Makefile,v 1.6 2007/01/15 17:40:10 simon Exp $

COMMENT=	"interface to HMAC Message-Digest Algorithms"

MODULES=	cpan
DISTNAME=	Digest-HMAC-1.01
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Digest-SHA1->=1:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>	
