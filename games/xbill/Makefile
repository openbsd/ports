# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:26 sthen Exp $

COMMENT=	save your computers from the evil clutches of Bill

DISTNAME=	xbill-2.1
REVISION =	2
CATEGORIES=	games x11

HOMEPAGE=	http://www.xbill.org/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	ICE SM X11 Xaw Xmu Xpm Xt c xcb

# bundled configure is out-of-date
# so regen the correct version which explicitly links with Xpm
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION = 2.13

CONFIGURE_ARGS=	--with-x \
		--disable-motif \
		--disable-gtk

NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xbill
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xbill
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xbill/xbill.scores

.include <bsd.port.mk>
