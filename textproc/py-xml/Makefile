# $OpenBSD: Makefile,v 1.23 2006/06/03 09:49:24 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python module for writing basic XML applications"

VERSION=	0.7.1
DISTNAME=	PyXML-${VERSION}
PKGNAME=	py-xml-${VERSION}p0
CATEGORIES=	textproc devel

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyxml/}

HOMEPAGE=	http://pyxml.sourceforge.net/

# BSD, badly worded
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

MODPY_DISTUTILS_BUILDARGS=	--with-libexpat=${LOCALBASE}

# pyexpat - use our own pyexpat.so
# otherwise use the python-expat version

FLAVORS=pyexpat
FLAVOR?=

LIB_DEPENDS=	expat.2::textproc/expat

.if !${FLAVOR:L:Mpyexpat}
BUILD_DEPENDS=	${MODPY_EXPAT_DEPENDS}
.endif

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/share/doc/PyXML/
SRC_DOCDIR=	${WRKSRC}/doc
DOCEXT=		*.txt *.tex

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA_DIR} ${DOC_DIR}/4DOM
	${INSTALL_DATA_DIR} ${DOC_DIR}/xmlproc
	${INSTALL_DATA} ${SRC_DOCDIR}/4DOM/* ${DOC_DIR}/4DOM/
	${INSTALL_DATA} ${SRC_DOCDIR}/xmlproc/* ${DOC_DIR}/xmlproc/
	@cd ${SRC_DOCDIR}/ && ${INSTALL_DATA} ${DOCEXT} ${DOC_DIR}

.include <bsd.port.mk>
