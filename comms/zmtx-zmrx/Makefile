# $OpenBSD: Makefile,v 1.12 2000/09/15 13:42:00 espie Exp $

DISTNAME=	zmtx-zmrx-1.02
DISTFILES=	zmtx-zmrx.shar.gz
CATEGORIES=	comms
NEED_VERSION=	1.330

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.inria.fr/network/modem/  \
		${MASTER_SITE_LOCAL}
# see also comp.unix.sources for version 1.0
# ftp://ftp.lth.se/pub/usenet/comp.sources.unix/volume28/zm/part01.gz
EXTRACT_CASES=*.shar.gz) zcat ${FULLDISTDIR}/$$archive | /bin/sh - ;;

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

do-install:
.for f in zmrx zmtx
	${INSTALL_PROGRAM} ${WRKSRC}/$f ${PREFIX}/bin 
	${INSTALL_MAN} ${WRKSRC}/$f.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
