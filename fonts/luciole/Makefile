COMMENT =	typeface developed explicitly for visually impaired people

DISTNAME =	luciole-1.0

CATEGORIES =	fonts

HOMEPAGE =	https://www.luciole-vision.com/

# Creative Commons Attribution 4.0 International Public License
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.typographies.fr/N/luciole/

DISTFILES =	Luciole-Bold-Italic.ttf \
		Luciole-Bold.ttf \
		Luciole-Regular-Italic.ttf \
		Luciole-Regular.ttf
EXTRACT_ONLY =

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

INSTALL_DIR =	${PREFIX}/share/fonts/luciole

pre-install:
.for font in ${DISTFILES}
	cp ${FULLDISTDIR}/${font} ${WRKSRC}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INSTALL_DIR}

.include <bsd.port.mk>
