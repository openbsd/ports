# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:53 naddy Exp $

COMMENT=	build IPv4 and IPv6 address space hierarchies

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=       Net-IPTrie-0.7
REVISION=	0
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		net/p5-NetAddr-IP

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
