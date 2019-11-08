# $OpenBSD: Makefile,v 1.4 2019/11/08 21:43:22 fcambus Exp $

COMMENT =	typeface carefully crafted & designed for computer screens

V =		3.11
DISTNAME =	Inter-$V
PKGNAME =	inter-$V

CATEGORIES =	fonts

HOMEPAGE =	https://rsms.me/inter/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/rsms/inter/releases/download/v$V/

EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*
WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/inter
	${INSTALL_DATA} ${WRKSRC}/Inter/*.otf \
		${WRKSRC}/"Inter (Hinted, for Windows)"/*.ttf \
		${PREFIX}/share/fonts/inter
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/inter
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/doc/inter

.include <bsd.port.mk>
