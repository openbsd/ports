# $OpenBSD: Makefile,v 1.16 2003/07/31 19:12:00 sturm Exp $

COMMENT=	"python module for writing basic XML applications"

VERSION=	0.7.1
DISTNAME=	PyXML-${VERSION}
PKGNAME=	py-xml-${VERSION}
CATEGORIES=	textproc devel

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyxml/}

HOMEPAGE=	http://pyxml.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	python

MODPY_DISTUTILS_BUILDARGS=	--with-libexpat=${LOCALBASE}

# pyexpat - use our own pyexpat.so
# otherwise use the python-expat version

FLAVORS=pyexpat
FLAVOR?=

LIB_DEPENDS=	expat.2::textproc/expat

.if !${FLAVOR:L:Mpyexpat}
BUILD_DEPENDS+=	:python-expat-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-expat
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
