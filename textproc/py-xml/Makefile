# $OpenBSD: Makefile,v 1.14 2002/12/29 20:19:09 fgsch Exp $

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

PYTHON_VER=     2.2

LIB_DEPENDS=	expat.2::textproc/expat
BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

SUBST_VARS=     PYTHON_VER
NO_REGRESS=	Yes

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

DOC_DIR=	${PREFIX}/share/doc/PyXML/
SRC_DOCDIR=	${WRKSRC}/doc
DOCEXT=		*.txt *.tex

do-build:
	${PY_CMD} build \
		--build-base=${WRKSRC} \
		--with-libexpat=${LOCALBASE}

do-install:
	${PY_CMD} install --prefix=${PREFIX}
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA_DIR} ${DOC_DIR}/4DOM
	${INSTALL_DATA_DIR} ${DOC_DIR}/xmlproc
	${INSTALL_DATA} ${SRC_DOCDIR}/4DOM/* ${DOC_DIR}/4DOM/
	${INSTALL_DATA} ${SRC_DOCDIR}/xmlproc/* ${DOC_DIR}/xmlproc/
	@cd ${SRC_DOCDIR}/ && ${INSTALL_DATA} ${DOCEXT} ${DOC_DIR}

.include <bsd.port.mk>
