# $OpenBSD: Makefile,v 1.3 2001/03/09 16:04:47 wilfried Exp $

DISTNAME=		wmtz-0.6
CATEGORIES=     	x11 x11/windowmaker
NEED_VERSION=		1.359

HOMEPAGE=		http://www.geocities.com/jl1n/wmtz/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes

WRKSRC=			${WRKDIST}/wmtz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/wmtz.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmtz
	${INSTALL_DATA} ${WRKBUILD}/wmtzrc ${PREFIX}/share/examples/wmtz/sample.wmtzrc

.include <bsd.port.mk>
