# $OpenBSD: Makefile,v 1.13 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"approximate grep (fast approximate pattern-matching tool)"

DISTNAME=	agrep-2.04
CATEGORIES=	textproc

MASTER_SITES=	ftp://ftp.cs.arizona.edu/agrep/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/agrep
	${INSTALL_PROGRAM} ${WRKSRC}/agrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/agrep.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/agrep.algorithms ${PREFIX}/share/doc/agrep

.include <bsd.port.mk>
