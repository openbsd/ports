# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:46 espie Exp $

COMMENT=	"save your computers from the evil clutches of Bill"

DISTNAME=	xbill-2.0
CATEGORIES=	games x11
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xbill

.include <bsd.port.mk>
