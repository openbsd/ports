# $OpenBSD: Makefile,v 1.7 2000/06/12 21:30:27 jakob Exp $

DISTNAME=	wmx-6pre6
PKGNAME=        wmx-6pre6

CATEGORIES=	x11

MASTER_SITES=	http://www.all-day-breakfast.com/wmx/
HOMEPAGE=	http://www.all-day-breakfast.com/wmx/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

FAKE=		yes
GNU_CONFIGURE=	yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
