# $OpenBSD: Makefile,v 1.1.1.1 2001/01/16 22:10:15 naddy Exp $

DISTNAME=	wmdate-0.7
CATEGORIES=	x11
NEED_VERSION=	1.340
HOMEPAGE=	http://wit401310.student.utwente.nl/~dalroi/apps/wmdate.php
MASTER_SITES=	http://wit401310.student.utwente.nl/~dalroi/apps/apps/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	dockapp:devel/libdockapp

USE_X11=	Yes
CONFIGURE_STYLE= imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmdate
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wmdate

.include <bsd.port.mk>
