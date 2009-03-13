# $OpenBSD: Makefile,v 1.4 2009/03/13 13:09:34 sthen Exp $

SHARED_ONLY=	Yes
 
COMMENT=	Tcl interface to PostgreSQL

V=		1.5
DISTNAME=	pgtcl$V
PKGNAME=	pgtcl-$Vp1
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

MODULES=	lang/tcl

MODTCL_VERSION=	8.4
LIB_DEPENDS=	pq.>=5:postgresql-client-*:databases/postgresql  
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=${MODTCL_INCDIR} \
		--with-postgres-include=${LOCALBASE}/include/postgresql \
		--with-postgres-lib=${LOCALBASE}/lib

MAKE_FLAGS=	PKG_LIB_FILE=libpgtcl.so.${LIBpgtcl_VERSION}
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/libpgtcl.pdf ${PREFIX}/share/doc/pgtcl

.include <bsd.port.mk>
