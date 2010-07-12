# $OpenBSD: Makefile,v 1.7 2010/07/12 22:07:40 sthen Exp $

COMMENT=		module to interact with a Cisco router

MODULES=		cpan
DISTNAME=		Net-Telnet-Cisco-1.10
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://nettelnetcisco.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes	
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Net-Telnet->=3.02:net/p5-Net-Telnet \
			:p5-Term-ReadKey->=2.14:devel/p5-Term-ReadKey

BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
