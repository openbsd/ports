# $OpenBSD: Makefile,v 1.22 2002/02/15 19:53:43 matt Exp $

COMMENT=		"simplified wrapper and interface generator"
COMMENT-examples=	"examples for swig"

VERSION=	1.3.9

DISTNAME=	swig-${VERSION}
PKGNAME-examples= swig-examples-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.488
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= swig

HOMEPAGE=       http://www.swig.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::lang/python/2.1 ::lang/tcl/8.3 ::lang/guile ::lang/ruby

MULTI_PACKAGES=	-examples

WRKDIST=	${WRKDIR}/SWIG-${VERSION}

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS+= --with-tclincl=${LOCALBASE}/include/tcl8.3 \
		 --with-tcllib==${LOCALBASE}/lib/tcl8.3 \
		 --with-guilelib=${LOCALBASE}/lib
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/Tools

ALL_TARGET=	swig runtime

SWIG_EXAMPLES=	${PREFIX}/share/examples/swig

post-install:
	${INSTALL_DATA_DIR} ${SWIG_EXAMPLES}
	cp -R ${WRKSRC}/Examples/* ${SWIG_EXAMPLES}
	
.include <bsd.port.mk>
