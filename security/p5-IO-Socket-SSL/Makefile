# $OpenBSD: Makefile,v 1.33 2010/10/03 15:11:57 jasper Exp $

COMMENT=	perl interface to SSL sockets

DISTNAME=	IO-Socket-SSL-1.33

CATEGORIES=	security

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Net-SSLeay->=1.21:security/p5-Net_SSLeay
REGRESS_DEPENDS=	::net/p5-IO-Socket-INET6

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

.include <bsd.port.mk>
