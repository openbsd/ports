# $OpenBSD: Makefile,v 1.2 2001/06/07 17:08:56 shell Exp $

COMMENT=		'python module for writing basic XML applications'

VERSION=		0.6.5
DISTNAME=		PyXML-${VERSION}
PKGNAME=		py-xml-${VERSION}
CATEGORIES=		devel
NEED_VERSION=		1.406

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pyxml

HOMEPAGE=		http://pyxml.sourceforge.net/topic/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

BUILD_DEPENDS=		python::lang/python
NO_CONFIGURE=		Yes

DOC_DIR=		${PREFIX}/share/doc/PyXML
DOC_SUB=		4DOM xmlproc
DOC_FILE=		xml-howto.tex xml-howto.txt \
			xml-ref.tex xml-ref.txt
DOC_4DOM=		4DOM.web Extensions.api Extensions.html \
			Ranges.api Ranges.html index.html
DOC_XMLPROC=		artikler.css basicapi.gif cmdline.gif \
			standard.css wxval.gif xmlproc-catalog-doco.html \
			xmlproc-doco.html xmlproc-dtd-doco.html \
			xmlproc-license.html xmlproc.html \
			xmlproc_cmdline.html xmlproc_dtdparser.html \
			xmlproc_ns.html xmlproc_tut.html

do-build:
	cd ${WRKSRC}; python ./setup.py build --build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python ./setup.py install --prefix=${PREFIX}
.for i in ${DOC_SUB}
	${INSTALL_DATA_DIR} ${DOC_DIR}/$i
.endfor
.for i in ${DOC_FILE}
	${INSTALL_DATA} ${WRKBUILD}/doc/$i ${DOC_DIR}/$i
.endfor
.for i in ${DOC_4DOM}
	${INSTALL_DATA} ${WRKBUILD}/doc/4DOM/$i ${DOC_DIR}/4DOM/$i
.endfor
.for i in ${DOC_XMLPROC}
	${INSTALL_DATA} ${WRKBUILD}/doc/xmlproc/$i ${DOC_DIR}/xmlproc/$i
.endfor

.include <bsd.port.mk>
