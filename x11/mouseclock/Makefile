# $OpenBSD: Makefile,v 1.17 2002/10/29 19:48:58 naddy Exp $

COMMENT=	"display the current time using the X11 root cursor"

DISTNAME=	mouseclock-1.0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/clocks/}

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE=	imake noman
XMKMF=		xmkmf

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mouseclock
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/mouseclock

.include <bsd.port.mk>
