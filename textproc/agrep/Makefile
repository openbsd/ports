# $OpenBSD: Makefile,v 1.23 2015/02/16 22:57:13 naddy Exp $

COMMENT=	approximate grep (fast approximate pattern-matching tool)

DISTNAME=	agrep-2.04
REVISION =	0
CATEGORIES=	textproc

MASTER_SITES=	ftp://ftp.cs.arizona.edu/agrep/
EXTRACT_SUFX=	.tar.Z

# custom
PERMIT_PACKAGE_FTP=	may not modify
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/agrep
	${INSTALL_PROGRAM} ${WRKSRC}/agrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/agrep.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/agrep.algorithms ${PREFIX}/share/doc/agrep

.include <bsd.port.mk>
