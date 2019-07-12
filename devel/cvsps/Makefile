# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:07 sthen Exp $

COMMENT=	generate patchsets from CVS repositories

# note that this was maintained for a while by esr, who made a couple of
# releases which have segfaults with OpenBSD src, and then broke diff
# support, before removing diff support completely, and ceasing development.
# deliberately holding at 2.1 for now.
DISTNAME=	cvsps-2.1
REVISION=	2
CATEGORIES=     devel
HOMEPAGE=	http://cvsps.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c z
MASTER_SITES=	${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cvsps ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/cvsps.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
