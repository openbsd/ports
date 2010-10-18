# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:52 espie Exp $

COMMENT=	generate patchsets from CVS repositories

V=		2.1
DISTNAME=	cvsps-${V}
CATEGORIES=     devel
HOMEPAGE=	http://www.cobite.com/cvsps/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c z
MASTER_SITES=	http://www.cobite.com/cvsps/
USE_GMAKE=	Yes
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cvsps ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/cvsps.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
