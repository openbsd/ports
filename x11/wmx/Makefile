# $OpenBSD: Makefile,v 1.6 2000/03/12 11:45:14 jakob Exp $

DISTNAME=	wmx-6pre1
PKGNAME=        wmx-6pre1

CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.42.org/pub/wmx/
HOMEPAGE=	http://www.all-day-breakfast.com/wmx/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

FAKE=		yes
USE_X11=	yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
