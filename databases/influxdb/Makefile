BROKEN =	doesn't build with rustc-1.72.0
COMMENT =	time-series datastore for metrics, events, and analytics

MODGO_VERSION=	v2.7.1
MODGO_MODNAME=	github.com/influxdata/influxdb/v2
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
WANTLIB +=	c c++abi pthread

COMPILER =		base-clang ports-gcc
MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_CARGOTOML =	${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.193.0/libflux/Cargo.toml
MODCARGO_MASTER_SITESN =8
MODCARGO_TARGET_DIR =	${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.193.0/libflux/target
# needed to make sure unwind* symbols are found
MODCARGO_RUSTFLAGS +=-C link-arg=-lc++abi
CGO_LDFLAGS=-lc++abi
MAKE_ENV +=	${MODCARGO_ENV} CGO_LDFLAGS=${CGO_LDFLAGS}
MAKE_ENV +=	PKG_CONFIG=${WRKSRC}/scripts/pkg-config.sh
.include "crates.inc"
# required because go.port.mk sets EXTRACT_ONLY to its base distfile
EXTRACT_ONLY =	${DISTNAME_ESC}${EXTRACT_SUFX}
.for _cratename _cratever in ${MODCARGO_CRATES}
EXTRACT_ONLY +=	${_MODCARGO_DIST_SUBDIR}${_cratename}-${_cratever}.tar.gz
.endfor
.include "modules.inc"

# set version for influxd version
MODGO_LDFLAGS =	-X main.version=${MODGO_VERSION:S/v//}

# fetch compiled ui assets
MASTER_SITES0 =	https://github.com/influxdata/ui/releases/download/OSS-${MODGO_VERSION}/
DISTFILES +=	influxdb-ui-${MODGO_VERSION}.tar.gz{build.tar.gz}:0
EXTRACT_ONLY +=	influxdb-ui-${MODGO_VERSION}.tar.gz
# sha comes from ${WRKSRC}/scripts/fetch-swagger.sh
OPENAPI_SHA =	8b5f1bbb2cd388eb454dc9da19e3d2c4061cdf5f
MASTER_SITES1 =	https://github.com/influxdata/openapi/raw/${OPENAPI_SHA}/contracts/
DISTFILES +=	influxdb-openapi-${OPENAPI_SHA}.json{oss.json}:1
# tell go to bundle web ui assets in binary
MODGO_FLAGS +=	-tags assets

# for patches to apply
WRKDIST =	${WRKSRC}
SUBST_VARS =	VARBASE

NO_TEST =	Yes

pre-build:
	chmod +x ${WRKSRC}/scripts/pkg-config.sh
	mkdir -p ${WRKSRC}/static/data
	cp -r ${WRKDIR}/build ${WRKSRC}/static/data/
	cp ${FULLDISTDIR}/influxdb-openapi-${OPENAPI_SHA}.json ${WRKSRC}/static/data/swagger.json
	# generates ${WRKSRC}/static/static_gen.go to bundle the web ui assets in the final influxd binary
	# taken from ${WRKSRC}/GNUMakefile
	cd ${WRKSRC} && ${MODGO_CMD} generate ${MODGO_FLAGS} ./static

do-configure:
	${MODCARGO_configure}

.include <bsd.port.mk>
