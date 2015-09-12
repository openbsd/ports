# $OpenBSD: Makefile.inc,v 1.1.1.1 2015/09/12 13:01:57 zhuk Exp $

PKG_ARCH ?=	*
CATEGORIES +=	fonts fonts/adobe-fonts x11

GH_ACCOUNT ?=	adobe-fonts
GH_PROJECT ?=	${DISTNAME:C/-[0-9].*//}

HOMEPAGE ?=	http://adobe-fonts.github.io/${GH_PROJECT}/

#  OFL 1.1 http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM ?=		Yes

DIST_SUBDIR ?=	adobe-fonts

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

FONT_DIR ?=	${PREFIX}/share/fonts/${PKGNAME:C/-[0-9].*//}
DOC_DIR ?=	${PREFIX}/share/doc/${PKGNAME:C/-[0-9].*//}

do-install:
	${INSTALL_DATA_DIR} ${FONT_DIR} ${DOC_DIR}
	cd ${WRKDIST}; ${INSTALL_DATA} TTF/*.ttf OTF/*.otf \
	    ${FONT_DIR}
	cd ${WRKDIST}; ${INSTALL_DATA} LICENSE.txt README.md *.css *.json \
	    ${DOC_DIR}
	cd ${WRKDIST}; if [ -e ReadMe.html ]; then \
		${INSTALL_DATA} *.html ${DOC_DIR}; \
	fi
