# $OpenBSD: Makefile,v 1.16 2004/09/30 22:15:42 xsa Exp $

COMMENT=	"save your computers from the evil clutches of Bill"

DISTNAME=	xbill-2.0
CATEGORIES=	games x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xbill
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xbill
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xbill/xbill.scores

.include <bsd.port.mk>
