# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:58 sthen Exp $

COMMENT=	Tcl interface to PostgreSQL

V =		1.7

DISTNAME=	pgtcl-${V}
REVISION=	0
CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/pgtcl/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://pgfoundry.org/frs/download.php/2151/

MODULES=	lang/tcl

LIB_DEPENDS=	databases/postgresql
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
WANTLIB +=	pq>=5 ${MODTCL_WANTLIB}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--with-postgres-include=${LOCALBASE}/include/postgresql \
		--with-postgres-lib=${LOCALBASE}/lib \
		--disable-threads

FAKE_FLAGS =	PKG_DIR='$$(PACKAGE_NAME)' INSTALL_PROGRAM='$$(INSTALL_DATA)' \
		PKG_HEADERS='' PKG_TCL_SOURCES=''

NO_TEST=	Yes
WRKDIST =	${WRKDIR}/lib${DISTNAME}
ALL_TARGET =	 binaries libraries
INSTALL_TARGET =install-binaries install-libraries
SEPARATE_BUILD =Yes
SUBST_VARS =	VER

VER =		${V:S/.//g}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/libpgtcl.pdf ${PREFIX}/share/doc/pgtcl

.include <bsd.port.mk>
