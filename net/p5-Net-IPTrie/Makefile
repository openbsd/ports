# $OpenBSD: Makefile,v 1.4 2010/11/19 22:31:36 espie Exp $

COMMENT=	build IPv4 and IPv6 address space hierarchies

MODULES=	cpan
DISTNAME=       Net-IPTrie-0.7
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		net/p5-NetAddr-IP

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
