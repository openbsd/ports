#
# OpenBSD makefile for: rzsz
# http://www.omen.com/
# Version required:     3.47
# Date created:         21 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/21 21:56:08 gene Exp $
#

DISTNAME=       rzsz
PKGNAME=        rzsz-3.47
CATEGORIES=	comms
MASTER_SITES=   ftp://ftp.cs.pdx.edu/pub/zmodem/
EXTRACT_SUFX=   .zip

MAINTAINER=     gene@OpenBSD.ORG

BUILD_DEPENDS=  unzip:${PORTSDIR}/archivers/unzip

RESTRICTED=	"This port is shareware"
NO_WRKSUBDIR=	yes
EXTRACT_CMD=    unzip
EXTRACT_ARGS=   -q

.include <bsd.port.mk>
