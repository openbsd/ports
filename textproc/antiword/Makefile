# $OpenBSD: Makefile,v 1.15 2003/01/21 01:48:34 margarida Exp $

COMMENT=	"converts MSWord Documents to ASCII Text and PostScript"

DISTNAME=	antiword-0.33
CATEGORIES=	textproc

HOMEPAGE=	http://www.winfield.demon.nl/

MASTER_SITES=	${HOMEPAGE}/linux/

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -pedantic -DNDEBUG" \
		LD="${CC}"

NO_REGRESS=	Yes

DOCS=		FAQ Netscape QandA ReadMe

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/antiword ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/Unix-only/KDE2-only/kantiword.sh \
		${PREFIX}/bin/antiword-kde-dnd.sh
	${INSTALL_MAN} ${WRKSRC}/Docs/antiword.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword/kde
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/antiword
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE2-only/Antiword.desktop.* \
		${PREFIX}/share/antiword/kde
	${INSTALL_DATA} ${WRKSRC}/Unix-only/KDE2-only/*.png \
		${PREFIX}/share/antiword
	${INSTALL_DATA} ${WRKSRC}/Resources/* \
		${PREFIX}/share/antiword

.include <bsd.port.mk>
