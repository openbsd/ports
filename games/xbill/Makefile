# $OpenBSD: Makefile,v 1.15 2002/10/26 20:44:39 naddy Exp $

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

.include <bsd.port.mk>
