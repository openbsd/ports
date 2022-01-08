# $OpenBSD: Makefile,v 1.8 2022/01/08 01:35:55 sthen Exp $

COMMENT =	Brave's adblock library

GH_ACCOUNT =	ArniDagur
GH_PROJECT =	python-adblock
GH_TAGNAME =	0.5.0
DISTNAME =	py-adblock-${GH_TAGNAME}
MODPY_EGG_VERSION = ${GH_TAGNAME}
REVISION =	1

CATEGORIES =	www

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE =Yes

WANTLIB += c c++abi pthread

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}

MODULES =	devel/cargo \
		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODCARGO_CARGO_BIN =	maturin
CONFIGURE_STYLE =	cargo

BUILD_DEPENDS =	devel/maturin \
		devel/py-pip${MODPY_FLAVOR}

TEST_DEPENDS =	textproc/py-toml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--release \
		${MODCARGO_BUILD_ARGS} ;

do-test:
	pip${MODPY_VERSION} install --isolated \
		--target=${WRKSRC}/tests \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl
	cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} -m pytest -v

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/libadblock.so ${PREFIX}/lib
	pip${MODPY_VERSION} install --isolated \
		--root=${WRKINST} \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl

.include "modules.inc"

.include <bsd.port.mk>
