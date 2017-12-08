# $OpenBSD: Makefile,v 1.15 2017/12/08 12:23:30 espie Exp $

COMMENT=		module to interact with a Cisco router

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Net-Telnet-Cisco-1.10
REVISION=		1
CATEGORIES=		net
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://nettelnetcisco.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		net/p5-Net-Telnet>=3.02

BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
