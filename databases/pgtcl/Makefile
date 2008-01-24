# $OpenBSD: Makefile,v 1.3 2008/01/24 18:34:01 merdely Exp $

SHARED_ONLY=	Yes
 
COMMENT=	Tcl interface to PostgreSQL

V=		1.5
DISTNAME=	pgtcl$V
PKGNAME=	pgtcl-$Vp0
SHARED_LIBS= 	pgtcl	0.0
CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/pgtcl/

MAINTAINER=	Valery Masiutsin <val.masutin@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	http://pgfoundry.org/frs/download.php/338/

TCL_VERSION=	8.4
LIB_DEPENDS=	pq.>=5:postgresql-client-*:databases/postgresql  
RUN_DEPENDS=	:tcl-${TCL_VERSION}.*:lang/tcl/${TCL_VERSION}
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION} \
		--with-tclinclude=${LOCALBASE}/include/tcl${TCL_VERSION} \
		--with-postgres-include=${LOCALBASE}/include/postgresql \
		--with-postgres-lib=${LOCALBASE}/lib

MAKE_FLAGS=	PKG_LIB_FILE=libpgtcl.so.${LIBpgtcl_VERSION}
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/libpgtcl.pdf ${PREFIX}/share/doc/pgtcl

.include <bsd.port.mk>
