# $OpenBSD: Makefile,v 1.19 2001/09/02 13:53:34 kevlo Exp $

COMMENT=		"simplified wrapper and interface generator"
COMMENT-examples=	"examples for swig"

VERSION=	1.3.6

DISTNAME=	swig-${VERSION}
PKGNAME-examples= swig-examples-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.448
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= swig

HOMEPAGE=       http://www.swig.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS+=	python2.1::lang/python \
		tclsh8.3::lang/tcl/8.3 \
		guile::lang/guile \
		ruby::lang/ruby

MULTI_PACKAGES=	-examples

WRKDIST=	${WRKDIR}/SWIG-${VERSION}

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS+= --with-tclincl=${LOCALBASE}/include/tcl8.3 \
		 --with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		 --with-guilelib=${LOCALBASE}/lib

ALL_TARGET=	swig runtime

SWIG_EXAMPLES=	${PREFIX}/share/examples/swig

post-install:
	${INSTALL_DATA_DIR} ${SWIG_EXAMPLES}
	cp -R ${WRKSRC}/Examples/* ${SWIG_EXAMPLES}
	
.include <bsd.port.mk>
