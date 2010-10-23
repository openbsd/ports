# $OpenBSD: Makefile,v 1.3 2010/10/23 09:35:20 jasper Exp $

COMMENT=	perl interface to jabber

MODULES=	cpan
DISTNAME=	Net-Jabber-2.0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Net-XMPP-*:net/p5-Net-XMPP
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
