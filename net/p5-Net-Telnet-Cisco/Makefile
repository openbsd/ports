# $OpenBSD: Makefile,v 1.12 2014/04/13 01:01:39 naddy Exp $

COMMENT=		module to interact with a Cisco router

MODULES=		cpan
DISTNAME=		Net-Telnet-Cisco-1.10
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://nettelnetcisco.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		net/p5-Net-Telnet>=3.02 \
			devel/p5-Term-ReadKey>=2.14

BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
