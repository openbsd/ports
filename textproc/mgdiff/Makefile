# $OpenBSD: Makefile,v 1.6 2000/06/10 00:35:52 espie Exp $

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=	Yes
USE_IMAKE=      Yes

post-install:
	@mkdir -p ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	@${INSTALL_MAN} ${WRKSRC}/mgdiff.man ${PREFIX}/man/man1/mgdiff.1

.include <bsd.port.mk>
