# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:34 sthen Exp $

COMMENT=	perl interface to jabber

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Jabber-2.0
REVISION=	2
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-XMPP
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
