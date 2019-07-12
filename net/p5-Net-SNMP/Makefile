# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:39 sthen Exp $

COMMENT=	Perl modules to access SNMP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SNMP-v6.0.1
PKGNAME=	p5-Net-SNMP-6.0.1
REVISION=	0
CATEGORIES=	net devel

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Crypt-DES>=2.03 \
		security/p5-Digest-HMAC>=1 \
		security/p5-Digest-SHA1>=1.02
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
