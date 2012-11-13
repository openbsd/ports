# $OpenBSD: Makefile,v 1.4 2012/11/13 07:24:41 jasper Exp $

COMMENT=	perl script to send xmpp messages, like mail(1)

DISTNAME=	sendxmpp-1.23
CATEGORIES=	net

HOMEPAGE=	http://sendxmpp.hostname.sk/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=        perl
RUN_DEPENDS=	net/p5-Net-XMPP

CONFIGURE_STYLE=perl

NO_REGRESS=	yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/lhost-sendxmpp-610082b/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sendxmpp/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/sendxmpp/

.include <bsd.port.mk>
