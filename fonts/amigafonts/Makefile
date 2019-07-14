# $OpenBSD: Makefile,v 1.3 2019/07/14 00:39:36 naddy Exp $

COMMENT =	faithfully remade Amiga fonts

GH_ACCOUNT =	rewtnull
GH_PROJECT =	amigafonts
GH_TAGNAME =	1.0
REVISION =	0

CATEGORIES =	fonts

HOMEPAGE =	https://www.trueschool.se/html/fonts.html

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# CC BY-NC-SA 3.0
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

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
