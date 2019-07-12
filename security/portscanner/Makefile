# $OpenBSD: Makefile,v 1.21 2019/07/12 20:49:33 sthen Exp $

COMMENT=	simple and easy to use TCP port scanner

DISTNAME=	PortScanner-1.2
PKGNAME=	${DISTNAME:L}
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

PERMIT_PACKAGE=	Yes
WANTLIB=		c

SEPARATE_BUILD=	Yes

NO_TEST=	Yes

do-build:
	${CC} ${CFLAGS} -Wall ${WRKSRC}/portscanner.c \
		-o ${WRKBUILD}/portscanner
	@sed -e s#portscan#portscanner#g ${WRKSRC}/portscan.1 > \
		${WRKBUILD}/portscanner.1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/portscanner ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/portscanner.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
