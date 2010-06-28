# $OpenBSD: Makefile,v 1.1.1.1 2010/06/28 13:31:32 jasper Exp $

COMMENT=	build IPv4 and IPv6 address space hierarchies

MODULES=	cpan
DISTNAME=       Net-IPTrie-0.5
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::net/p5-NetAddr-IP

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
