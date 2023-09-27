COMMENT=	convert Postscript to Encapsulated Postscript

DISTNAME=	ps2eps-1.70
CATEGORIES=	print

HOMEPAGE=	https://telematics.tm.kit.edu/english/staff_bless.php?tab=%5B1512%5D

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SITES=		https://tm.kit.edu/~bless/

RUN_DEPENDS=	print/ghostscript/gnu

WRKDIST=	${WRKDIR}/ps2eps
NO_TEST=	Yes

do-build:
	${CC} ${CFLAGS} -o ${WRKBUILD}/bbox ${WRKSRC}/src/C/bbox.c

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/ps2eps ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bbox ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/bbox.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/ps2eps.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
