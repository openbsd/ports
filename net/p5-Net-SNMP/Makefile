# $OpenBSD: Makefile,v 1.10 2007/01/14 20:49:05 simon Exp $

COMMENT=	"Perl modules to access SNMP"

MODULES=	cpan
DISTNAME=	Net-SNMP-5.2.0
CATEGORIES=	net devel

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Crypt-DES->=2.03:security/p5-Crypt-DES \
		:p5-Digest-HMAC->=1:security/p5-Digest-HMAC \
		:p5-Digest-SHA1->=1.02:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
