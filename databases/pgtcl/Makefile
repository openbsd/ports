# $OpenBSD: Makefile,v 1.11 2013/03/11 02:52:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Tcl interface to PostgreSQL

DISTNAME=	pgtcl-1.7
SHARED_LIBS= 	pgtcl17	0.0
CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/pgtcl/

MAINTAINER=	Valery Masiutsin <val.masutin@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pgfoundry.org/frs/download.php/2151/

MODULES=	lang/tcl

LIB_DEPENDS=	databases/postgresql
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
WANTLIB +=	pq>=5 ${MODTCL_WANTLIB}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--with-postgres-include=${LOCALBASE}/include/postgresql \
		--with-postgres-lib=${LOCALBASE}/lib \
		--disable-threads \
		SHLIB_VERSION=${LIBpgtcl17_VERSION}

FAKE_FLAGS=	PKG_DIR=pgtcl INSTALL_LIBRARY='${INSTALL_DATA}' PKG_HEADERS=
NO_TEST=	Yes
WRKDIST =	${WRKDIR}/lib${DISTNAME}
ALL_TARGET =	 binaries libraries
INSTALL_TARGET =install-binaries install-libraries
SEPARATE_BUILD =Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/libpgtcl.pdf ${PREFIX}/share/doc/pgtcl

.include <bsd.port.mk>
