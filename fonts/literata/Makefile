COMMENT =	contemporary serif typeface for long-form reading

V =		2.201
PKGNAME =	literata-$V

CATEGORIES =	fonts

HOMEPAGE =	https://fonts.google.com/specimen/Literata

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/googlefonts/literata/releases/download/v$V/
SITES.a =	https://raw.githubusercontent.com/googlefonts/literata/v$V/

DISTFILES =	Literata-v$V.zip
DISTFILES.a = 	OFL.txt
EXTRACT_ONLY =	$(DISTFILES)

DIST_SUBDIR =	literata-$V

NO_BUILD =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/literata
	${INSTALL_DATA} ${FULLDISTDIR}/OFL.txt ${PREFIX}/share/doc/literata
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/literata
	${INSTALL_DATA} ${WRKDIST}/ttfs/*.ttf ${PREFIX}/share/fonts/literata

.include <bsd.port.mk>
