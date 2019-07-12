# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:52 sthen Exp $

COMMENT=	powerful console ftp client with many features

DISTNAME=	yafc-1.1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=yafc/}
REVISION=	6

HOMEPAGE=	http://yafc.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

DOCS=	NEWS README TODO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yafc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/yafc
	${INSTALL_DATA} ${WRKBUILD}/yafcrc.sample ${PREFIX}/share/examples/yafc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/yafc

.include <bsd.port.mk>
