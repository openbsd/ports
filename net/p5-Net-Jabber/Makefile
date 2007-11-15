# $OpenBSD: Makefile,v 1.1.1.1 2007/11/15 18:45:28 jasper Exp $

COMMENT=	perl interface to jabber

MODULES=	cpan
DISTNAME=	Net-Jabber-2.0
CATEGORIES=	net

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
