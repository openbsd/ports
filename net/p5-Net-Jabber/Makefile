# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:53 espie Exp $

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-Jabber
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
	${PREFIX}/share/examples/p5-Net-Jabber

.include <bsd.port.mk>
