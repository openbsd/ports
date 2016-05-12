# $OpenBSD: Makefile,v 1.14 2016/05/12 14:00:13 espie Exp $

COMMENT=		module to interact with a Cisco router

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Net-Telnet-Cisco-1.10
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://nettelnetcisco.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		net/p5-Net-Telnet>=3.02

BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
