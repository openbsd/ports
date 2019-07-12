# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:44 sthen Exp $

COMMENT=	the definite guide to DocBook

V=		2.0.8
DISTNAME=	tdg-en-html-${V}
PKGNAME=	docbook-guide-${V}
EXTRACT_SUFX=	.zip
CATEGORIES=	books
REVISION=	0

MASTER_SITES=	http://docbook.org/tdg/en/ \
		https://spacehopper.org/mirrors/
HOMEPAGE=	http://docbook.org/tdg/en/

# GNU Free Documentation License
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}/tdg/en

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/docbook-guide

DOC_SUBDIRS=    html html/figures html/figures/admon html/figures/callouts \
		glyphs/100dpi

ISO_GLYPHS=	amsa amsb amsc amsn amso amsr box cyr1 cyr2 dia grk1 \
		grk2 grk3 grk4 lat1 lat2 num pub tech

do-install:
.for i in ${DOC_SUBDIRS}
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/$i
	${INSTALL_DATA} `find ${WRKDIST}/$i -maxdepth 1 -type f` \
		${INSTALL_LOC}/$i
.endfor
.for i in ${ISO_GLYPHS}
	@sed 's,http://www.oasis-open.org/docbook/xmlcharent/,../,g' \
	 <${WRKSRC}/html/iso-${i}.html >${INSTALL_LOC}/html/iso-${i}.html
.endfor

.include <bsd.port.mk>
