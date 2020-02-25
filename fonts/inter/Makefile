# $OpenBSD: Makefile,v 1.5 2020/02/25 07:11:10 bentley Exp $

COMMENT =	typeface carefully crafted & designed for computer screens

V =		3.12
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
