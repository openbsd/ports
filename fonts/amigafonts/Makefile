COMMENT =	faithfully remade Amiga fonts

GH_ACCOUNT =	rewtnull
GH_PROJECT =	amigafonts
GH_TAGNAME =	1.02
REVISION =	1

CATEGORIES =	fonts

HOMEPAGE =	https://www.trueschool.se/html/fonts.html

# GPL-FE
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/amigafonts
DOCDIR =	${PREFIX}/share/doc/amigafonts

do-patch:
	cd ${WRKDIST}/ttf && for i in `ls *.ttf`; do \
		mv $$i `echo $$i | sed -e 's/_v1.0//;s/_/-/'`; done

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/ttf/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/README ${DOCDIR}

.include <bsd.port.mk>
