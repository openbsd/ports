# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:56 espie Exp $

COMMENT=	perl script to send xmpp messages, like mail(1)

DISTNAME=	sendxmpp-1.23
CATEGORIES=	net

HOMEPAGE=	http://sendxmpp.hostname.sk/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=        perl
RUN_DEPENDS=	net/p5-Net-XMPP

CONFIGURE_STYLE=perl

NO_TEST=	yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/lhost-sendxmpp-610082b/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sendxmpp/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/sendxmpp/

.include <bsd.port.mk>
