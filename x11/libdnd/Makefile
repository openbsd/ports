# $OpenBSD: Makefile,v 1.1.1.1 2001/03/07 15:43:32 wilfried Exp $

PKGNAME=	libdnd-1.1
DISTNAME=	dnd.1.1
EXTRACT_SUFX=	.tgz
CATEGORIES=	x11 devel
NEED_VERSION=	1.340
MASTER_SITES=	http://leb.net/OffiX/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/DND
WRKSRC=	${WRKDIST}/DNDlib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdnd
	${INSTALL_DATA} ${WRKDIR}/DND/DNDdoc/* ${PREFIX}/share/doc/libdnd

.include <bsd.port.mk>
