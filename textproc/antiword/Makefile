# $OpenBSD: Makefile,v 1.2 2000/10/01 22:08:08 obecian Exp $

DISTNAME=	antiword-0.30
CATEGORIES=	textproc
NEED_VERSION=	1.320
MASTER_SITES=	http://www.winfield.demon.nl/linux/

WRKDIST=	${WRKDIR}/antiword.0.30

HOMEPAGE=	http://www.winfield.demon.nl/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/antiword ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/Unix-only/KDE-only/kantiword.sh \
		${PREFIX}/bin/antiword-kde-dnd.sh
	${INSTALL_MAN} ${WRKSRC}/Unix-only/antiword.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword/kde
	${INSTALL_DATA} ${WRKSRC}/Docs/* ${PREFIX}/share/doc/antiword
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE-only/Antiword.kdelnk.* \
		${PREFIX}/share/antiword/kde
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE-only/antiword.xpm \
		${PREFIX}/share/antiword

.include <bsd.port.mk>
