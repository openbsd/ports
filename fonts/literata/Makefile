# $OpenBSD: Makefile,v 1.1.1.1 2020/08/06 09:09:15 bentley Exp $

COMMENT =	contemporary serif typeface for long-form reading

V =		2.201
PKGNAME =	literata-$V

CATEGORIES =	fonts

HOMEPAGE =	https://fonts.google.com/specimen/Literata

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/googlefonts/literata/releases/download/v$V/
MASTER_SITES0 =	https://raw.githubusercontent.com/googlefonts/literata/v$V/

DISTFILES =	Literata-v$V.zip \
		OFL.txt:0
EXTRACT_ONLY =	Literata-v$V.zip

DIST_SUBDIR =	literata-$V

NO_BUILD =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/literata
	${INSTALL_DATA} ${FULLDISTDIR}/OFL.txt ${PREFIX}/share/doc/literata
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/literata
	${INSTALL_DATA} ${WRKDIST}/ttfs/*.ttf ${PREFIX}/share/fonts/literata

.include <bsd.port.mk>
