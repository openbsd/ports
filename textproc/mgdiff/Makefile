# $OpenBSD: Makefile,v 1.10 2001/04/18 15:01:20 espie Exp $

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc
NEED_VERSION=	1.400
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=	any
CONFIGURE_STYLE= imake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/mgdiff
	${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	${INSTALL_MAN} ${WRKSRC}/mgdiff.man ${PREFIX}/man/man1/mgdiff.1

.include <bsd.port.mk>
