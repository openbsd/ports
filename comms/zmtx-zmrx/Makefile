# $OpenBSD: Makefile,v 1.2 1998/10/07 19:36:37 marc Exp $
#

DISTNAME=	zmtx-zmrx
PKGNAME=	zmtx-zmrx-1.02
CATEGORIES=	comms

RESTRICTED=	"may not be used for commercial purposes"

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.inria.fr/network/modem/  \
		${MASTER_SITE_LOCAL}
# see also comp.unix.sources for version 1.0
# ftp://ftp.lth.se/pub/usenet/comp.sources.unix/volume28/zm/part01.gz
EXTRACT_SUFX=	.shar.gz
EXTRACT_CMD=	zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

NO_WRKSUBDIR=	yes
MAKEFILE=	makefile

PKG_CMD=	/usr/sbin/pkg_create -D ${PKGDIR}/licence

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
