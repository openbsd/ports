# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:49 espie Exp $

COMMENT=	"graphical front end to Unix diff"

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications

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
