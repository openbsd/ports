BROKEN-i386 =	fatal runtime error: Rust cannot catch foreign exceptions
#.if ${MACHINE_ARCH} == i386
#DPB_PROPERTIES = lonesome
#.endif

# pip error at do-install time
BROKEN-riscv64 = ERROR: adblock-0.0.0-cp37-abi3-openbsd_7_5_riscv.whl is not a supported wheel on this platform.

COMMENT =	Brave's adblock library

GH_ACCOUNT =	ArniDagur
GH_PROJECT =	python-adblock
GH_TAGNAME =	0.6.0
DISTNAME =	py-adblock-${GH_TAGNAME}
#MODPY_EGG_VERSION = ${GH_TAGNAME}
MODPY_EGG_VERSION = 0.0.0
REVISION =	3

CATEGORIES =	www

# MIT
PERMIT_PACKAGE =Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =	devel/cargo \
		lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PYBUILD =		maturin
MODCARGO_CARGO_BIN =	maturin

CONFIGURE_STYLE =	cargo

BUILD_DEPENDS =	devel/maturin \
		devel/py-pip${MODPY_FLAVOR}

TEST_DEPENDS =	textproc/py-toml${MODPY_FLAVOR}

do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--release \
		${MODCARGO_BUILD_ARGS} ;

do-test:
	pip${MODPY_VERSION} install --no-cache-dir --isolated \
		--target=${WRKSRC}/tests \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl
	cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} -m pytest -v

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/libadblock.so ${PREFIX}/lib
	pip${MODPY_VERSION} install --no-cache-dir --isolated \
		--root=${WRKINST} \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl

.include "crates.inc"

.include <bsd.port.mk>
