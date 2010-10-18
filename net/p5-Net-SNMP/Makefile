# $OpenBSD: Makefile,v 1.14 2010/10/18 18:36:54 espie Exp $

COMMENT=	Perl modules to access SNMP

MODULES=	cpan
DISTNAME=	Net-SNMP-v6.0.1
PKGNAME=	p5-Net-SNMP-6.0.1
CATEGORIES=	net devel
USE_GROFF =	Yes

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
