# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:52 wilfried Exp $

DISTNAME=		dnd.1.1
PKGNAME=		libdnd-1.1
CATEGORIES=		x11 devel
NEED_VERSION=		1.340

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://leb.net/OffiX/
EXTRACT_SUFX=		.tgz

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/DND
WRKSRC=			${WRKDIST}/DNDlib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdnd
	${INSTALL_DATA} ${WRKDIST}/DNDdoc/* ${PREFIX}/share/doc/libdnd

.include <bsd.port.mk>
