# $OpenBSD: Makefile,v 1.4 2002/06/18 22:15:35 naddy Exp $

COMMENT=		"list processes as a tree"
DISTNAME=		pstree-2.17
CATEGORIES=     	sysutils
NEED_VERSION=		1.515

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.go.dlr.de/fresh/unix/src/misc/

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} -o pstree pstree.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pstree ${PREFIX}/bin/pstree

.include <bsd.port.mk>
