# $OpenBSD: Makefile,v 1.9 2000/03/05 18:30:41 espie Exp $

DISTNAME=	gv-3.5.8
CATEGORIES=	print
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/


MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Xaw3d.6.1:x11/Xaw3d
RUN_DEPENDS=	gs:print/ghostscript5

USE_IMAKE=	Yes

post-install:
	@cd ${WRKSRC}; ${MAKE} install.doc
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
