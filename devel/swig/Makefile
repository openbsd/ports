# $OpenBSD: Makefile,v 1.40 2006/08/18 16:04:47 sturm Exp $

COMMENT=	"simplified wrapper and interface generator"

VERSION=	1.3.24

DISTNAME=	swig-${VERSION}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	devel
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=swig/}

HOMEPAGE=       http://www.swig.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MODULES=	lang/python
LIB_DEPENDS=	guile.>=9::lang/guile
BUILD_DEPENDS=	::lang/tcl/8.4 \
		::lang/ruby

WRKDIST=	${WRKDIR}/SWIG-${VERSION}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS+= --with-tclincl=${LOCALBASE}/include/tcl8.4 \
		 --with-tcllib==${LOCALBASE}/lib/tcl8.4 \
		 --with-guilelib=${LOCALBASE}/lib \
		 --with-python=${MODPY_BIN} \
		 --without-php4 \
		 --without-ocaml
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/Tools/config

ALL_TARGET=	swig

SWIG_EXAMPLES=	${PREFIX}/share/examples/swig
SWIG_DOCS=	${PREFIX}/share/doc/swig

post-install:
	${INSTALL_DATA_DIR} ${SWIG_EXAMPLES}
	${INSTALL_DATA_DIR} ${SWIG_DOCS}
	cp -R ${WRKSRC}/Examples/* ${SWIG_EXAMPLES}
	cp -R ${WRKSRC}/Doc/* ${SWIG_DOCS}
	
.include <bsd.port.mk>
