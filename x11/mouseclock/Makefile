# OpenBSD makefile for:	mouseclock
# Version required:	1.0
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.15 2002/03/21 21:25:55 espie Exp $
#

COMMENT=	"display the current time using the X11 root cursor"

DISTNAME=	mouseclock-1.0
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/clocks

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE=	imake noman
XMKMF=		xmkmf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mouseclock
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/mouseclock

.include <bsd.port.mk>
