COMMENT=	Tcl interface to PostgreSQL

GH_ACCOUNT=	flightaware
GH_PROJECT=	Pgtcl
GH_TAGNAME=	v3.0.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	databases

HOMEPAGE=	https://flightaware.github.io/Pgtcl/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/tcl

LIB_DEPENDS=	databases/postgresql \
		databases/sqlite3
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
WANTLIB +=	pq>=5 sqlite3

CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--with-postgres-include=${LOCALBASE}/include/postgresql \
		--with-postgres-lib=${LOCALBASE}/lib \
		--disable-threads

# fix sqlite detection
CONFIGURE_ARGS+=CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# the configure needs to be adapted for 2.71
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.16

FAKE_FLAGS =	PKG_DIR='$$(PACKAGE_NAME)' INSTALL_PROGRAM='$$(INSTALL_DATA)' \
		PKG_HEADERS='' PKG_TCL_SOURCES=''

NO_TEST=	Yes
SUBST_VARS =	VER

# upstream forgot to update the version number in configure.in
# after tagging 3.0.0?
VER =		277

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/pgtcl/html
	${INSTALL_DATA} ${WRKSRC}/doc/libpgtcl.pdf ${PREFIX}/share/doc/pgtcl

.include <bsd.port.mk>
