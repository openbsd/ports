# $OpenBSD: Makefile,v 1.10 2000/10/22 14:03:59 espie Exp $
# $FreeBSD Id: Makefile,v 1.2 1999/06/28 02:22:43 billf Exp $
#

DISTNAME=	xfstt-1.1
CATEGORIES=	x11
NEED_VERSION=   1.223
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= X11/fonts

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xfstt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xfstt.1x ${PREFIX}/man/man1/xfstt.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xfstt
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/xfstt
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/xfstt
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/share/doc/xfstt
	${INSTALL_DATA} ${WRKSRC}/THANKS.txt ${PREFIX}/share/doc/xfstt
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/xfstt

.include <bsd.port.mk>
