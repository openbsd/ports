# $OpenBSD: Makefile,v 1.3 2002/06/09 05:32:03 wilfried Exp $

COMMENT=	"interface to HMAC Message-Digest Algorithms"

DISTNAME=	Digest-HMAC-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.504

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

BUILD_DEPENDS=	:p5-Digest-MD5->=2:security/p5-Digest-MD5 \
		:p5-Digest-SHA1->=1:security/p5-Digest-SHA1
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
