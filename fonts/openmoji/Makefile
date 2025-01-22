COMMENT =		SVG/COLR-based open source emoji fonts

MODFONT_FAMILY =	openmoji
MODFONT_VERSION =	15.1.0

DIST_TUPLE =		github hfg-gmuend openmoji ${MODFONT_VERSION} .

CATEGORIES =		fonts

HOMEPAGE =		https://openmoji.org/

# CC-BY-SA
PERMIT_PACKAGE =	Yes

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

MODFONT_FONTFILES =	font/OpenMoji-color-colr1_svg/*.ttf \
			font/OpenMoji-black-glyf/*.ttf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openmoji
	${INSTALL_DATA} ${FILESDIR}/90-openmoji-aliases.conf \
		${PREFIX}/share/openmoji

.include <bsd.port.mk>
