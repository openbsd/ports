# $OpenBSD: Makefile,v 1.9 2010/11/19 22:31:36 espie Exp $

COMMENT=		module to interact with a Cisco router

MODULES=		cpan
DISTNAME=		Net-Telnet-Cisco-1.10
REVISION=		0
CATEGORIES=		net
USE_GROFF =		Yes

HOMEPAGE=		http://nettelnetcisco.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes	
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		net/p5-Net-Telnet>=3.02 \
			devel/p5-Term-ReadKey>=2.14

BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
