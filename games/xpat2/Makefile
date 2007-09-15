# $OpenBSD: Makefile,v 1.22 2007/09/15 18:01:04 simon Exp $

COMMENT=	X11 solitaire with 14 variations

DISTNAME=	xpat2-1.04
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	-src.tar.gz

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

USE_X11=	Yes

WRKSRC=${WRKDIST}/src
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpat2
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xpat2/xpat.log

.include <bsd.port.mk>
