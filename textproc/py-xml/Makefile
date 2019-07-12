# $OpenBSD: Makefile,v 1.50 2019/07/12 20:50:14 sthen Exp $

COMMENT=	Python module for writing basic XML applications

MODPY_EGG_VERSION=0.8.4

VERSION=	${MODPY_EGG_VERSION}
DISTNAME=	PyXML-${VERSION}
PKGNAME=	py-xml-${VERSION}
REVISION=	14
CATEGORIES=	textproc devel

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyxml/}

HOMEPAGE=	http://sourceforge.net/projects/pyxml/

# BSD, badly worded
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_DISTUTILS_BUILDARGS=	--with-libexpat=/usr \
				--with-xslt

# pyexpat - use our own pyexpat.so
# otherwise use the python-expat version
FLAVORS=pyexpat
FLAVOR?=

.if ${FLAVOR:Mpyexpat}
WANTLIB += expat
.endif

WANTLIB +=	${MODPY_WANTLIB} pthread

TEST_DEPENDS= lang/python/${MODPY_VERSION},-tests

DOC_DIR=	${PREFIX}/share/doc/py-xml/
SRC_DOCDIR=	${WRKSRC}/doc
DOCEXT=		*.txt *.tex

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA_DIR} ${DOC_DIR}/4DOM
	${INSTALL_DATA_DIR} ${DOC_DIR}/xmlproc
	${INSTALL_DATA} ${SRC_DOCDIR}/4DOM/* ${DOC_DIR}/4DOM/
	${INSTALL_DATA} ${SRC_DOCDIR}/xmlproc/* ${DOC_DIR}/xmlproc/
	@cd ${SRC_DOCDIR}/ && ${INSTALL_DATA} ${DOCEXT} ${DOC_DIR}

do-test: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./regrtest.py

.include <bsd.port.mk>
