# OpenBSD makefile for:    zmtx-zmrx
# Version required:     1.02
# Date created:         31 Dec 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/31 17:14:13 joey Exp $
#

DISTNAME=	zmtx-zmrx
PKGNAME=	zmtx-zmrx-1.02
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.inria.fr/network/modem/  \
		${MASTER_SITE_LOCAL}
# see also comp.unix.sources for version 1.0
# ftp://ftp.lth.se/pub/usenet/comp.sources.unix/volume28/zm/part01.gz
EXTRACT_SUFX=	.shar.gz

MAINTAINER=	joey@OpenBSD.ORG

EXTRACT_CMD=	zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh
NO_WRKSUBDIR=	yes
MAKEFILE=	makefile
PKG_CMD=	/usr/sbin/pkg_create -D ${PKGDIR}/licence
MAN1=		zmrx.1 zmtx.1

do-install:
.for f in zmrx zmtx
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin 
	${INSTALL_MAN} ${WRKSRC}/${f}.1 ${PREFIX}/man/man1
.endfor

post-install:
	@${ECHO} ""
	@/usr/bin/more ${PKGDIR}/licence
	@${ECHO} ""

.include <bsd.port.mk>
