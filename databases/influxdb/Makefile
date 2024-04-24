COMMENT =	time-series datastore for metrics, events, and analytics

MODUI_VERSION =	v2.7.1
MODGO_VERSION =	v2.7.3
MODGO_MODNAME =	github.com/influxdata/influxdb/v2
GH_ACCOUNT =	influxdata
GH_PROJECT =	influxdb
GH_TAGNAME =	${MODGO_VERSION}
REVISION =	0

HOMEPAGE =	https://influxdata.com

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go \
		devel/cargo

BUILD_DEPENDS =	textproc/xmlto \
		textproc/asciidoc

#some dists have -w
FIX_CLEANUP_PERMISSIONS =	Yes
WANTLIB +=	${MODCARGO_WANTLIB}

COMPILER =		base-clang ports-gcc
MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_CARGOTOML =	${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.194.3/libflux/Cargo.toml
MODCARGO_TARGET_DIR =	${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.194.3/libflux/target

.if ${MACHINE_ARCH} != "sparc64"
# needed to make sure unwind* symbols are found
CGO_LDFLAGS = -lc++abi
.endif

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
SITES.ui =	https://github.com/influxdata/ui/releases/download/OSS-${MODUI_VERSION}/
DISTFILES.ui =	influxdb-ui-${MODUI_VERSION}.tar.gz{build.tar.gz}
EXTRACT_ONLY +=	influxdb-ui-${MODUI_VERSION}.tar.gz
# sha comes from ${WRKSRC}/scripts/fetch-swagger.sh
OPENAPI_SHA =	8b5f1bbb2cd388eb454dc9da19e3d2c4061cdf5f
SITES.json =	https://github.com/influxdata/openapi/raw/${OPENAPI_SHA}/contracts/
DISTFILES.json =influxdb-openapi-${OPENAPI_SHA}.json{oss.json}
# tell go to bundle web ui assets in binary
MODGO_FLAGS +=	-tags assets

# for patches to apply
WRKDIST =	${WRKSRC}

NO_TEST =	Yes

pre-build:
	chmod +x ${WRKSRC}/scripts/pkg-config.sh
	mkdir -p ${WRKSRC}/static/data
	cp -r ${WRKDIR}/build ${WRKSRC}/static/data/
	cp ${FULLDISTDIR}/influxdb-openapi-${OPENAPI_SHA}.json ${WRKSRC}/static/data/swagger.json
	# generates ${WRKSRC}/static/static_gen.go to bundle the web ui assets in the final influxd binary
	# taken from ${WRKSRC}/GNUMakefile
	cd ${WRKSRC} && ${MODGO_CMD} generate ${MODGO_FLAGS} ./static
	# hack to fix build with rust 1.72
	sed -ie 12d ${WRKDIR}/go/pkg/mod/github.com/influxdata/flux@v0.194.3/libflux/flux/src/lib.rs

do-configure:
	${MODCARGO_configure}

.include <bsd.port.mk>
