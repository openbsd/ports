# $OpenBSD: Makefile,v 1.8 2001/12/08 19:53:31 obecian Exp $

COMMENT=	"converts MSWord Documents to ASCII Text and PostScript"

DISTNAME=	antiword-0.32
CATEGORIES=	textproc
NEED_VERSION=	1.500
MASTER_SITES=	http://www.winfield.demon.nl/linux/

HOMEPAGE=	http://www.winfield.demon.nl/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -pedantic -DNDEBUG" \
		LD="${CC}"

WRKDIST=	${WRKDIR}/antiword.0.32

DOCS=	ChangeLog FAQ History Netscape QandA ReadMe

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/antiword ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/Unix-only/KDE2-only/kantiword.sh \
		${PREFIX}/bin/antiword-kde-dnd.sh
	${INSTALL_MAN} ${WRKSRC}/Docs/antiword.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword/kde
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword/resources
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/antiword
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE2-only/Antiword.desktop.* \
		${PREFIX}/share/antiword/kde
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE2-only/*.png \
		${PREFIX}/share/antiword
	${INSTALL_DATA} ${WRKSRC}/Resources/* \
		${PREFIX}/share/antiword/resources

.include <bsd.port.mk>
