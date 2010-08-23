# $OpenBSD: Makefile,v 1.2 2010/08/23 09:01:18 jasper Exp $

COMMENT=	build IPv4 and IPv6 address space hierarchies

MODULES=	cpan
DISTNAME=       Net-IPTrie-0.7
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::net/p5-NetAddr-IP

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
