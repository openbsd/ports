# $OpenBSD: Makefile,v 1.4 2001/02/26 04:51:09 avsm Exp $

DISTNAME=	wmdate-0.7
CATEGORIES=	x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://wit401310.student.utwente.nl/~dalroi/apps/wmdate.php
MASTER_SITES=	http://wit401310.student.utwente.nl/~dalroi/apps/apps/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	dockapp::devel/libdockapp

USE_X11=	Yes
CONFIGURE_STYLE= imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmdate
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wmdate

.include <bsd.port.mk>
