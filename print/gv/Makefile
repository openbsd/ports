# $OpenBSD: Makefile,v 1.6 1999/09/26 22:51:37 espie Exp $

DISTNAME=	gv-3.5.8
CATEGORIES=	print
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

NEED_VERSION=	1.88

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xaw3d.6.1:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

post-install:
	@(cd ${WRKSRC}; ${MAKE} install.doc)
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
