# $OpenBSD: Makefile,v 1.16 2004/09/23 07:21:44 espie Exp $

COMMENT=	"shooting game for X11"

DISTNAME=	xsoldier-0.96
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.surfline.ne.jp/hachi/xsoldier/

CONFIGURE_STYLE=	imake noman

NO_REGRESS=	Yes

# empty template for pkg install
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xsoldier
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xsoldier/xsoldier.scores

.include <bsd.port.mk>
