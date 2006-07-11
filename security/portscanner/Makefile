# $OpenBSD: Makefile,v 1.14 2006/07/11 15:28:24 steven Exp $
# $FreeBSD: Makefile,v 1.5 1999/01/26 22:19:07 billf Exp $

COMMENT=	"simple and easy to use TCP port scanner"

DISTNAME=	PortScanner-1.2
PKGNAME=	${DISTNAME:L}
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	concurrent

NO_REGRESS=	Yes

do-build:
	${CC} ${CFLAGS} -Wall ${WRKSRC}/portscanner.c \
		-o ${WRKBUILD}/portscanner
	@sed -e s#portscan#portscanner#g ${WRKSRC}/portscan.1 > \
		${WRKBUILD}/portscanner.1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/portscanner ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/portscanner.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
