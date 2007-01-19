# $OpenBSD: Makefile,v 1.1.1.1 2007/01/19 07:05:54 steven Exp $

COMMENT=	"convert Postscript to Encapsulated Postscript"

DISTNAME=	ps2eps-1.61
CATEGORIES=	print

HOMEPAGE=	http://www.tm.uka.de/~bless/ps2eps.html

MAINTAINER=	Laurence Tratt <laurie@tratt.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.tm.uka.de/~bless/

RUN_DEPENDS=	::print/ghostscript/gnu

WANTLIB=	c
WRKDIST= 	${WRKDIR}/ps2eps
NO_REGRESS=	Yes

do-build:
	${CC} ${CFLAGS} -o ${WRKBUILD}/bbox ${WRKSRC}/src/C/bbox.c

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/ps2eps ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bbox ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/bbox.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/man1/ps2eps.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
