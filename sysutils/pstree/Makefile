# $OpenBSD: Makefile,v 1.3 2002/03/21 21:25:52 espie Exp $

COMMENT=		"list processes as a tree"
DISTNAME=		pstree-2.16
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
