# $OpenBSD: Makefile,v 1.24 2019/07/12 20:44:06 sthen Exp $

COMMENT=	generate GNU-style ChangeLogs from CVS repositories

V=		2.62
DISTNAME=	cvs2cl.pl-${V}
PKGNAME=	cvs2cl-${V}
CATEGORIES=     devel
HOMEPAGE=	http://www.red-bean.com/cvs2cl/
EXTRACT_SUFX=	.gz

# GPL
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

NO_TEST=	Yes
PKG_ARCH=	*

do-build:
	pod2man ${WRKSRC}/cvs2cl.pl-${V} ${WRKSRC}/cvs2cl.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2cl.pl-${V} ${PREFIX}/bin/cvs2cl
	${INSTALL_MAN} ${WRKSRC}/cvs2cl.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
