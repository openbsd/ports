COMMENT =	Japanese TrueType with embedded bitmap font

V =		20121218
DISTNAME =	Konatu_ver_$V
PKGNAME =	konatu-$V

CATEGORIES =	fonts japanese x11

HOMEPAGE =	http://blog.masuseki.com/?p=233

#MIT
PERMIT_PACKAGE=	Yes

SITES =			http://www.masuseki.com/be/konatu/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

INST_DIR=		${PREFIX}/share/fonts/konatu/
DOC_DIR=		${PREFIX}/share/doc/konatu/
FONTSDIR=		${WRKDIR}/${DISTNAME}/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${FONTSDIR}/*.ttf ${INST_DIR}
	${INSTALL_DATA} ${FONTSDIR}/*.txt ${DOC_DIR}

.include <bsd.port.mk>
