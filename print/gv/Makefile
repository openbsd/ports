# OpenBSD makefile for:	gv
# Version required:	gv-3.5.8
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/07/20 00:52:30 espie Exp $
#

DISTNAME=	gv-3.5.8
CATEGORIES=	print
MASTER_SITES=	ftp://thep.physik.uni-mainz.de/pub/gv/unix/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xaw3d\\.6\\.:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=   gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

post-install:
.if !defined(NOPORTDOCS)
	@(cd ${WRKSRC}; ${MAKE} install.doc)
.endif
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
