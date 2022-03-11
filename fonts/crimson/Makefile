COMMENT=	oldstyle book font

GH_ACCOUNT=	skosch
GH_PROJECT=	Crimson
GH_TAGNAME=	fonts-october2014
PKGNAME=	crimson-2014.10

CATEGORIES=	fonts

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes

FONTSDIR=	${PREFIX}/share/fonts/crimson

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	cd "${WRKSRC}/Desktop Fonts/OTF"; \
	    ${INSTALL_DATA} *.otf ${FONTSDIR}

.include <bsd.port.mk>
