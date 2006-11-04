# $OpenBSD: Makefile,v 1.7 2006/11/04 19:19:15 kili Exp $

COMMENT=	"digital camera RAW format conversion tool"

DISTNAME=	dcraw-8.19
CATEGORIES=	graphics

HOMEPAGE=	http://www.cybercom.net/~dcoffin/dcraw/

MASTER_SITES=	http://www.oxide.org/dcraw/${DISTNAME}/
	
DISTFILES=	dcraw.c dcraw.1
DIST_SUBDIR=	${DISTNAME}

LIB_DEPENDS=	jpeg.>=6::graphics/jpeg

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

# Some code is completely free, some is under the GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

NO_REGRESS=	Yes
SEPARATE_BUILD=	simple

do-extract:
	mkdir ${WRKSRC}
	cp ${DISTDIR}/${DIST_SUBDIR}/dcraw.c ${WRKSRC}

do-build:
	${CC} ${CFLAGS} -c -o ${WRKBUILD}/dcraw.o -I${PREFIX}/include \
		-DNO_LCMS ${WRKSRC}/dcraw.c
	${CC} ${CFLAGS} -o ${WRKBUILD}/dcraw -ljpeg -lm -L${PREFIX}/lib \
		${WRKBUILD}/dcraw.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dcraw ${PREFIX}/bin
	${INSTALL_MAN} ${DISTDIR}/${DIST_SUBDIR}/dcraw.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
