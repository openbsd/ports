# $OpenBSD: Makefile,v 1.5 1999/04/01 02:57:56 brad Exp $

DISTNAME=       rzsz
PKGNAME=        rzsz-3.48
CATEGORIES=	comms

NO_CDROM=	"COMM: commercial software"
RESTRICTED=	"This port is shareware"

MAINTAINER=     gene@OpenBSD.ORG

MASTER_SITES=   ftp://ftp.cs.pdx.edu/pub/zmodem/
EXTRACT_SUFX=   .zip
EXTRACT_CMD=    ${SETENV} unzip
EXTRACT_ARGS=   -q

BUILD_DEPENDS=  unzip:${PORTSDIR}/archivers/unzip

NO_WRKSUBDIR=	yes

.include <bsd.port.mk>
