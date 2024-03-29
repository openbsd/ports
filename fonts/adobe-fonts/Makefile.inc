PKG_ARCH ?=	*
CATEGORIES +=	fonts fonts/adobe-fonts x11

GH_ACCOUNT ?=	adobe-fonts
TAG ?=		${GH_TAGNAME:C,/,-,g}
DISTNAME ?=	${GH_PROJECT}-${TAG}
PKGNAME ?=	adobe-${GH_PROJECT}-${VERSION}

HOMEPAGE ?=	http://adobe-fonts.github.io/${GH_PROJECT}/

# SIL OFL 1.1
PERMIT_PACKAGE ?=	Yes

DIST_SUBDIR ?=	adobe-fonts

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

FONT_DIR ?=	${PREFIX}/share/fonts/adobe-${GH_PROJECT}
DOC_DIR ?=	${PREFIX}/share/doc/adobe-${GH_PROJECT}

WRKDIST ?=	${WRKDIR}/${DISTNAME}

SUBST_VARS +=	VERSION VERSION_I

LICENSE ?=	LICENSE.txt

do-install:
	${INSTALL_DATA_DIR} ${FONT_DIR} ${DOC_DIR}
	cd ${WRKDIST}; ${INSTALL_DATA} TTF/*.ttf OTF/*.otf \
	    ${FONT_DIR}
	cd ${WRKDIST}; ${INSTALL_DATA} ${LICENSE} README.md *.css *.json \
	    ${DOC_DIR}
	cd ${WRKDIST}; if [ -e ReadMe.html ]; then \
		${INSTALL_DATA} *.html ${DOC_DIR}; \
	fi
