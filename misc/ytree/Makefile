# $OpenBSD: Makefile,v 1.5 2002/10/27 21:07:54 naddy Exp $
# $FreeBSD: ports/misc/ytree/Makefile,v 1.10 2000/04/30 20:15:23 steve Exp $

COMMENT=	"DOS-XTREE(tm) look-a-like file manager"

DISTNAME=	ytree-1.73
CATEGORIES=	misc

HOMEPAGE=	http://www.han.de/~werner/ytree.html

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

MASTER_SITES=	http://www.han.de/~werner/ \
		http://openbsd.rutgers.edu/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ytree ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytree
	${INSTALL_DATA} ${WRKBUILD}/ytree.conf \
		${PREFIX}/share/examples/ytree/ytree.conf
	${INSTALL_MAN} ${WRKBUILD}/ytree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
