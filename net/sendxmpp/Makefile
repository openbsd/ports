# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:48 sthen Exp $

COMMENT=	perl script to send xmpp messages, like mail(1)

GH_TAGNAME=	1.24
GH_ACCOUNT=	lhost
GH_PROJECT=	sendxmpp
CATEGORIES=	net

HOMEPAGE=	http://sendxmpp.hostname.sk/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=        perl
RUN_DEPENDS=	net/p5-Net-XMPP

CONFIGURE_STYLE=perl

NO_TEST=	yes
PKG_ARCH=	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sendxmpp/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/sendxmpp/

.include <bsd.port.mk>
