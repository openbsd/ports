# $OpenBSD: Makefile,v 1.23 2013/03/11 10:50:32 espie Exp $

COMMENT=	powerful make utility

DISTNAME=	xmake-1.06
CATEGORIES=	devel
HOMEPAGE=	http://apollo.backplane.com/xmake/

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/xmake
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

pre-build:
	@rm -rf ${WRKSRC}/obj

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmake ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmake.1     ${PREFIX}/man/man1

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
