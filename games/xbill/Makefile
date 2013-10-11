# $OpenBSD: Makefile,v 1.28 2013/10/11 23:49:40 naddy Exp $

COMMENT=	save your computers from the evil clutches of Bill

DISTNAME=	xbill-2.1
REVISION =	1
CATEGORIES=	games x11

HOMEPAGE=	http://www.xbill.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	ICE SM X11 Xaw Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--with-x \
		--disable-motif \
		--disable-gtk

NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xbill
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xbill
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xbill/xbill.scores

.include <bsd.port.mk>
