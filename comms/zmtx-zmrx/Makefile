# $OpenBSD: Makefile,v 1.14 2001/05/05 22:40:27 jakob Exp $

COMMENT=	"receive/send files via ZMODEM protocol (unrestricted)"

DISTNAME=	zmtx-zmrx-1.02
DISTFILES=	zmtx-zmrx.shar.gz
CATEGORIES=	comms
NEED_VERSION=	1.406

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.inria.fr/network/modem/  \
		${MASTER_SITE_LOCAL}
# see also comp.unix.sources for version 1.0
# ftp://ftp.lth.se/pub/usenet/comp.sources.unix/volume28/zm/part01.gz

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

do-install:
.for f in zmrx zmtx
	${INSTALL_PROGRAM} ${WRKSRC}/$f ${PREFIX}/bin 
	${INSTALL_MAN} ${WRKSRC}/$f.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
