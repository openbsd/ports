# $OpenBSD: Makefile,v 1.7 2000/02/12 08:02:30 turan Exp $

DISTNAME=	gv-3.5.8
CATEGORIES=	print
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

NEED_VERSION=	1.88

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	Xaw3d.6.1:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

post-install:
	@(cd ${WRKSRC}; ${MAKE} install.doc)
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
