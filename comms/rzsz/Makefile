# $OpenBSD: Makefile,v 1.3 1998/10/07 19:19:35 marc Exp $
#

DISTNAME=       rzsz
PKGNAME=        rzsz-3.47
CATEGORIES=	comms

BROKEN=		"source files have changed"
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
