# $OpenBSD: Makefile,v 1.26 2002/12/29 20:19:12 fgsch Exp $

COMMENT=		"simplified wrapper and interface generator"
COMMENT-examples=	"examples for swig"

VERSION=	1.3.11

DISTNAME=	swig-${VERSION}
PKGNAME-examples= swig-examples-${VERSION}
CATEGORIES=	devel
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=swig/}

HOMEPAGE=       http://www.swig.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PYTHON_VER=	2.2
BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		::lang/tcl/8.3 \
		::lang/guile \
		::lang/ruby

MULTI_PACKAGES=	-examples

WRKDIST=	${WRKDIR}/SWIG-${VERSION}

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS+= --with-tclincl=${LOCALBASE}/include/tcl8.3 \
		 --with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		 --with-guilelib=${LOCALBASE}/lib \
		 --with-python=${LOCALBASE}/bin/python${PYTHON_VER}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/Tools

ALL_TARGET=	swig runtime

SWIG_EXAMPLES=	${PREFIX}/share/examples/swig
SWIG_DOCS=	${PREFIX}/share/doc/swig

post-install:
	${INSTALL_DATA_DIR} ${SWIG_EXAMPLES}
	${INSTALL_DATA_DIR} ${SWIG_DOCS}
	cp -R ${WRKSRC}/Examples/* ${SWIG_EXAMPLES}
	cp -R ${WRKSRC}/Doc/* ${SWIG_DOCS}
	
.include <bsd.port.mk>
