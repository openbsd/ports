# $OpenBSD: Makefile,v 1.6 2013/11/09 20:41:03 juanfra Exp $

COMMENT =	set of OpenType fonts designed for user interfaces
PKG_ARCH =	*
VERSION =	1.050
DISTNAME =	SourceSansPro_FontsOnly-${VERSION}
PKGNAME =	adobe-source-sans-pro-${VERSION}
CATEGORIES =	fonts x11
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://sourceforge.net/projects/sourcesans.adobe/

#  OFL http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sourcesans.adobe/}

NO_BUILD =	Yes
NO_TEST =	Yes

INST_DIR =	${PREFIX}/lib/X11/fonts/adobe-source-sans-pro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adobe-source-sans-pro
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIST}/TTF/*.ttf ${WRKDIST}/OTF/*.otf ${INST_DIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE.txt \
		${PREFIX}/share/doc/adobe-source-sans-pro
	${INSTALL_DATA} ${WRKDIST}/*.html \
		${PREFIX}/share/doc/adobe-source-sans-pro

.include <bsd.port.mk>
