# $OpenBSD: Makefile,v 1.5 2001/02/18 00:25:30 obecian Exp $

DISTNAME=	antiword-0.31
CATEGORIES=	textproc
NEED_VERSION=	1.336
MASTER_SITES=	http://www.winfield.demon.nl/linux/

HOMEPAGE=	http://www.winfield.demon.nl/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -pedantic -DNDEBUG" \
		LD="${CC}"

WRKDIST=	${WRKDIR}/antiword.0.31

DOC=	ChangeLog FAQ History Netscape QandA ReadMe

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/antiword ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/Unix-only/KDE-only/kantiword.sh \
		${PREFIX}/bin/antiword-kde-dnd.sh
	${INSTALL_MAN} ${WRKSRC}/Docs/antiword.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword/kde
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword/resources
.for file in ${DOC}
	${INSTALL_DATA} ${WRKSRC}/Docs/${file} ${PREFIX}/share/doc/antiword
.endfor
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE-only/Antiword.kdelnk.* \
		${PREFIX}/share/antiword/kde
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE-only/antiword.xpm \
		${PREFIX}/share/antiword
	${INSTALL_DATA} ${WRKSRC}/Resources/* ${PREFIX}/share/antiword/resources

.include <bsd.port.mk>
