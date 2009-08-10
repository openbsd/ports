# $OpenBSD: Makefile,v 1.22 2009/08/10 06:31:43 kili Exp $

COMMENT=	save your computers from the evil clutches of Bill

DISTNAME=	xbill-2.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://www.xbill.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	ICE SM X11 Xaw Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--with-x \
		--disable-motif \
		--disable-gtk

USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xbill
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xbill
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xbill/xbill.scores

.include <bsd.port.mk>
