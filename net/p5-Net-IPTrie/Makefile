# $OpenBSD: Makefile,v 1.5 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	build IPv4 and IPv6 address space hierarchies

MODULES=	cpan
DISTNAME=       Net-IPTrie-0.7
REVISION=	0
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
