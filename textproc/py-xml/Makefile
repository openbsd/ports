# $OpenBSD: Makefile,v 1.6 2001/10/16 16:26:47 naddy Exp $

COMMENT=		"python module for writing basic XML applications"

VERSION=		0.6.6
DISTNAME=		PyXML-${VERSION}
PKGNAME=		py-xml-${VERSION}
CATEGORIES=		textproc devel
NEED_VERSION=		1.440

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pyxml

HOMEPAGE=		http://pyxml.sourceforge.net/topic/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

PYTHON_VER=     2.1

LIB_DEPENDS=	expat.2::textproc/expat
RUN_DEPENDS=	::lang/python
BUILD_DEPENDS=  ${RUN_DEPENDS}

SUBST_VARS=     PYTHON_VER

DOC_DIR=		${PREFIX}/share/doc/PyXML
SRC_DOCDIR=		${WRKSRC}/doc
SRC_DOCMOD=		4DOM xmlproc
SRC_DOCFILES=		package-summary.txt xml-howto.tex \
			xml-howto.txt xml-ref.tex xml-ref.txt

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC} \
		--with-libexpat=${LOCALBASE}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${SRC_DOCMOD}
	${INSTALL_DATA_DIR} ${DOC_DIR}/$i
	${INSTALL_DATA} ${SRC_DOCDIR}/$i/* ${DOC_DIR}/$i/
.endfor
.for i in ${SRC_DOCFILES}
	${INSTALL_DATA} ${SRC_DOCDIR}/$i ${DOC_DIR}/$i
.endfor

.include <bsd.port.mk>
