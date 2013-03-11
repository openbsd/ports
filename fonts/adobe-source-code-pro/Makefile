# $OpenBSD: Makefile,v 1.4 2013/03/11 11:06:04 espie Exp $

COMMENT =	monospaced OpenType fonts designed for coding environments
PKG_ARCH =	*
VERSION =	1.017
DISTNAME =	SourceCodePro_FontsOnly-${VERSION}
PKGNAME =	adobe-source-code-pro-${VERSION}
CATEGORIES =	fonts x11
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://sourceforge.net/projects/sourcecodepro.adobe/

#  OFL http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sourcecodepro.adobe/}

NO_BUILD =	Yes
NO_TEST =	Yes

INST_DIR =	${PREFIX}/lib/X11/fonts/adobe-source-code-pro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adobe-source-code-pro
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIST}/TTF/*.ttf ${WRKDIST}/OTF/*.otf ${INST_DIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE.txt \
		${PREFIX}/share/doc/adobe-source-code-pro
	${INSTALL_DATA} ${WRKDIST}/*.html \
		${PREFIX}/share/doc/adobe-source-code-pro

.include <bsd.port.mk>
