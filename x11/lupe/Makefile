# $OpenBSD: Makefile,v 1.18 2004/12/17 15:18:33 alek Exp $

COMMENT=	"real-time magnifying glass for X11"

DISTNAME=	lupe008c
PKGNAME=	lupe-0.08
CATEGORIES=	x11

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.oersted.co.jp/~yav/soft/

# License: PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m 

USE_X11=	Yes

CONFIGURE_STYLE=imake
XMKMF=		xmkmf

WRKDIST=	${WRKDIR}/lupe

NO_REGRESS=	Yes

.include <bsd.port.mk>
