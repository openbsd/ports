# $OpenBSD: Makefile,v 1.17 2004/11/28 22:41:28 espie Exp $

COMMENT=	"shooting game for X11"

DISTNAME=	xsoldier-0.96
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xpm c

MASTER_SITES=	http://www.surfline.ne.jp/hachi/xsoldier/

CONFIGURE_STYLE=	imake noman

NO_REGRESS=	Yes

# empty template for pkg install
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xsoldier
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xsoldier/xsoldier.scores

.include <bsd.port.mk>
