# $OpenBSD: Makefile,v 1.9 2001/01/05 16:36:00 brad Exp $

DISTNAME=	agrep-2.04
CATEGORIES=	textproc
NEED_VERSION=	1.340
MASTER_SITES=	ftp://ftp.cs.arizona.edu/agrep/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

MAKE_FLAGS=	CFLAGS='${CFLAGS}'

ALL_TARGET=

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/agrep
	${INSTALL_PROGRAM} ${WRKSRC}/agrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/agrep.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/agrep.algorithms ${PREFIX}/share/doc/agrep

.include <bsd.port.mk>
