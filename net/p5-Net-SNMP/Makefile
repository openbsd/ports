# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:53 espie Exp $

COMMENT=	Perl modules to access SNMP

MODULES=	cpan
DISTNAME=	Net-SNMP-v6.0.1
PKGNAME=	p5-Net-SNMP-6.0.1
REVISION=	0
CATEGORIES=	net devel
USE_GROFF =	Yes

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Crypt-DES>=2.03 \
		security/p5-Digest-HMAC>=1 \
		security/p5-Digest-SHA1>=1.02
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
