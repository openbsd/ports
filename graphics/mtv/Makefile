# $OpenBSD: Makefile,v 1.4 2000/10/22 14:03:20 espie Exp $

DISTNAME=	mtv-1.0.6.0
CATEGORIES=	graphics
NEED_VERSION=	1.322
MASTER_SITES=	ftp://ftp.mpegtv.com/pub/mpeg/mpegtv/player/unsupported/x86-bsdi-bsdos/

HOMEPAGE=	http://www.mpegtv.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Commercial
PERMIT_PACKAGE_FTP=     Commercial
PERMIT_DISTFILES_CDROM= Commercial
PERMIT_DISTFILES_FTP=   Commercial

ONLY_FOR_ARCHS= i386
EXTRACT_SUFX=	.tgz

WRKDIST=        ${WRKDIR}/mtv

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mtv
	${INSTALL_SCRIPT} ${WRKSRC}/mtv ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mtvp ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/mtv
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/mtv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/mtv
	${INSTALL_DATA} ${WRKSRC}/release-notes.html ${PREFIX}/share/mtv

.include <bsd.port.mk>
