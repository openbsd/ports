# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:29 espie Exp $

DISTNAME=	zmtx-zmrx
PKGNAME=	zmtx-zmrx-1.02
CATEGORIES=	comms

RESTRICTED=	"may not be used for commercial purposes"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.inria.fr/network/modem/  \
		${MASTER_SITE_LOCAL}
NEED_VERSION=	1.191
# see also comp.unix.sources for version 1.0
# ftp://ftp.lth.se/pub/usenet/comp.sources.unix/volume28/zm/part01.gz
EXTRACT_SUFX=	.shar.gz
EXTRACT_CMD=	zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

WRKDIST=	${WRKDIR}
MAKEFILE=	makefile

PKG_CMD=	/usr/sbin/pkg_create -D ${PKGDIR}/licence

do-install:
.for f in zmrx zmtx
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin 
	${INSTALL_MAN} ${WRKSRC}/${f}.1 ${PREFIX}/man/man1
.endfor

post-install:
	@echo ""
	@more ${PKGDIR}/licence
	@echo ""

.include <bsd.port.mk>
