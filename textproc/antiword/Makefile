# $OpenBSD: Makefile,v 1.18 2004/04/07 20:00:49 sturm Exp $

COMMENT=	"converts MSWord Documents to ASCII Text and PostScript"

DISTNAME=	antiword-0.35
CATEGORIES=	textproc

HOMEPAGE=	http://www.winfield.demon.nl/

MASTER_SITES=	${HOMEPAGE}/linux/

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DNDEBUG" \
		LD="${CC}"

NO_REGRESS=	Yes

DOCS=		FAQ Netscape QandA ReadMe

post-patch:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
		${WRKSRC}/antiword.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/antiword ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/Docs/antiword.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antiword
	${INSTALL_DATA_DIR} ${PREFIX}/share/antiword
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/antiword
	${INSTALL_DATA} ${WRKSRC}/Resources/* \
		${PREFIX}/share/antiword

.include <bsd.port.mk>
