COMMENT =	time-series datastore for metrics, events, and analytics

MODGO_VERSION=	v1.11.0
MODGO_MODNAME=	github.com/influxdata/influxdb
GH_ACCOUNT =	influxdata
GH_PROJECT =	influxdb
GH_TAGNAME =	${MODGO_VERSION}

HOMEPAGE =	https://influxdata.com

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go \
		devel/cargo

BUILD_DEPENDS =	${MODCARGO_BUILD_DEPENDS} \
		textproc/xmlto \
		textproc/asciidoc

#some dists have -w
FIX_CLEANUP_PERMISSIONS =	Yes
WANTLIB +=	c++abi pthread

COMPILER =		base-clang ports-gcc
MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_CARGOTOML =	${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.188.0/libflux/Cargo.toml
MODCARGO_MASTER_SITESN =8
MODCARGO_TARGET_DIR =	${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.188.0/libflux/target
# needed to make sure unwind* symbols are found
MODCARGO_RUSTFLAGS +=-C link-arg=-lc++abi
CGO_LDFLAGS=-lc++abi
MAKE_ENV +=	${MODCARGO_ENV} CGO_LDFLAGS=${CGO_LDFLAGS}
MAKE_ENV +=	PKG_CONFIG=${WRKSRC}/pkg-config.sh
.include "crates.inc"
.for _cratename _cratever in ${MODCARGO_CRATES}
EXTRACT_ONLY +=	${_MODCARGO_DIST_SUBDIR}${_cratename}-${_cratever}.tar.gz
.endfor
.include "modules.inc"

# for patches to apply
WRKDIST =	${WRKSRC}
# for man/Makefile
USE_GMAKE =	Yes
SUBST_VARS =	VARBASE

NO_TEST =	Yes

pre-build:
	chmod +x ${WRKSRC}/pkg-config.sh

do-configure:
	${MODCARGO_configure}

do-install:
	${MODGO_INSTALL_TARGET}
	cd ${WRKSRC}/man && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/influxdb/
	${INSTALL_DATA} ${WRKSRC}/etc/config.sample.toml \
		${PREFIX}/share/examples/influxdb/

.include <bsd.port.mk>
