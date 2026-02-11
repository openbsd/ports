COMMENT =	faithfully remade Amiga fonts

MODFONT_FAMILY =	amigafonts
MODFONT_VERSION =	1.02

GH_ACCOUNT =	rewtnull
GH_PROJECT =	${MODFONT_FAMILY}
GH_TAGNAME =	${MODFONT_VERSION}
REVISION =	3

MODULES =	font

# GPL-FE
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

do-patch:
	cd ${WRKDIST}/ttf && for i in *.ttf; do \
		mv $$i `echo $$i | sed -e 's/_v1.0//;s/_/-/'`; done

MODFONT_FONTFILES =	ttf/*.ttf
MODFONT_DOCFILES =	README

.include <bsd.port.mk>
