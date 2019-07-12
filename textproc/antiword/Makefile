# $OpenBSD: Makefile,v 1.30 2019/07/12 21:02:26 sthen Exp $

COMMENT=	converts MSWord Documents to ASCII Text and PostScript

DISTNAME=	antiword-0.37
REVISION=	0
CATEGORIES=	textproc
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://www.winfield.demon.nl/

MASTER_SITES=	${HOMEPAGE}/linux/

# GPLv2+ (mentioned in manpage)
PERMIT_PACKAGE=	Yes

WANTLIB += c

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Wall -DNDEBUG" \
		LD="${CC}"

NO_TEST=	Yes

DOCS=		FAQ Netscape QandA ReadMe Mutt

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/antiword.h

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
