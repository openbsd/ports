# $OpenBSD: Makefile,v 1.26 2019/07/12 20:46:04 sthen Exp $

COMMENT=	powerful make utility

DISTNAME=	xmake-1.06
CATEGORIES=	devel
HOMEPAGE=	http://apollo.backplane.com/xmake/

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/xmake
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

pre-build:
	rm -r ${WRKSRC}/obj

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmake ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmake.1     ${PREFIX}/man/man1

NO_TEST=	Yes

.include <bsd.port.mk>
