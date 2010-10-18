# $OpenBSD: Makefile,v 1.34 2010/10/18 21:41:47 espie Exp $

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
USE_GROFF =	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

.include <bsd.port.mk>
