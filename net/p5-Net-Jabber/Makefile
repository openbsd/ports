# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:53 espie Exp $

COMMENT=	perl interface to jabber

MODULES=	cpan
DISTNAME=	Net-Jabber-2.0
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-XMPP
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
