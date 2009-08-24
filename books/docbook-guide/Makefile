# $OpenBSD: Makefile,v 1.5 2009/08/24 15:28:21 sthen Exp $

COMMENT=	the definite guide to DocBook

V=		2.0.8
DISTNAME=	tdg-en-html-${V}
PKGNAME=	docbook-guide-${V}
EXTRACT_SUFX=	.zip
CATEGORIES=	books

MASTER_SITES=	http://docbook.org/tdg/en/ \
		http://spacehopper.org/mirrors/
HOMEPAGE=	http://docbook.org/tdg/en/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GNU Free Documentation License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/tdg/en

NO_BUILD=	Yes
NO_REGRESS=	Yes
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
