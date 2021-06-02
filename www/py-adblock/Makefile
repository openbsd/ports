# $OpenBSD: Makefile,v 1.1.1.1 2021/06/02 20:04:10 sthen Exp $

COMMENT =	Brave's adblock library

GH_ACCOUNT =	ArniDagur
GH_PROJECT =	python-adblock
GH_TAGNAME =	0.4.4
DISTNAME =	py-adblock-0.4.4

CATEGORIES =	www

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE =Yes

WANTLIB += c c++abi pthread

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}

MODCARGO_CRATES +=	adblock	0.3.10	# MPL-2.0
MODCARGO_CRATES +=	addr	0.11.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	adler	1.0.2	# 0BSD OR MIT OR Apache-2.0
MODCARGO_CRATES +=	aho-corasick	0.7.15	# Unlicense/MIT
MODCARGO_CRATES +=	autocfg	1.0.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	base64	0.13.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder	1.4.3	# Unlicense OR MIT
MODCARGO_CRATES +=	cfg-if	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	crc32fast	1.2.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ctor	0.1.20	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	either	1.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	flate2	1.0.20	# MIT/Apache-2.0
MODCARGO_CRATES +=	form_urlencoded	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	ghost	0.1.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	idna	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	indoc	0.3.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	indoc-impl	0.3.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	instant	0.1.9	# BSD-3-Clause
MODCARGO_CRATES +=	inventory	0.1.10	# MIT OR Apache-2.0
MODCARGO_CRATES +=	inventory-impl	0.1.10	# MIT OR Apache-2.0
MODCARGO_CRATES +=	itertools	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.93	# MIT OR Apache-2.0
MODCARGO_CRATES +=	lock_api	0.4.3	# Apache-2.0/MIT
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.3.4	# Unlicense/MIT
MODCARGO_CRATES +=	miniz_oxide	0.4.4	# MIT OR Zlib OR Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.14	# MIT OR Apache-2.0
MODCARGO_CRATES +=	once_cell	1.7.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	parking_lot	0.11.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.8.3	# Apache-2.0/MIT
MODCARGO_CRATES +=	paste	0.1.18	# MIT OR Apache-2.0
MODCARGO_CRATES +=	paste-impl	0.1.18	# MIT OR Apache-2.0
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro-hack	0.5.19	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.26	# MIT OR Apache-2.0
MODCARGO_CRATES +=	psl	2.0.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	psl-types	2.0.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	pyo3	0.13.2	# Apache-2.0
MODCARGO_CRATES +=	pyo3-macros	0.13.2	# Apache-2.0
MODCARGO_CRATES +=	pyo3-macros-backend	0.13.2	# Apache-2.0
MODCARGO_CRATES +=	quote	1.0.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.2.5	# MIT
MODCARGO_CRATES +=	regex	1.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.23	# MIT/Apache-2.0
MODCARGO_CRATES +=	rmp	0.8.10	# MIT
MODCARGO_CRATES +=	rmp-serde	0.13.7	# MIT
MODCARGO_CRATES +=	scopeguard	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	seahash	3.0.7	# MIT
MODCARGO_CRATES +=	serde	1.0.125	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.125	# MIT OR Apache-2.0
MODCARGO_CRATES +=	smallvec	1.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	syn	1.0.69	# MIT OR Apache-2.0
MODCARGO_CRATES +=	tinyvec	1.2.0	# Zlib OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	tinyvec_macros	0.1.0	# MIT OR Apache-2.0 OR Zlib
MODCARGO_CRATES +=	twoway	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	unchecked-index	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.5	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	unindent	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	url	2.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi	0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0

MODULES =	devel/cargo \
		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODCARGO_CARGO_BIN=	maturin
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

.include <bsd.port.mk>
