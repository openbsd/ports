COMMENT =		Rust components used in mitmproxy

MODPY_EGG_VERSION =	0.7.0
DISTNAME =		mitmproxy_rs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://mitmproxy.org/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m pthread

DIST_TUPLE +=		github smoltcp-rs smoltcp ef67e7b46cabf49783053cbf68d8671ed97ff8d4 .

MODULES =		devel/cargo \
			lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

MODCARGO_CARGO_BIN =	maturin
CONFIGURE_STYLE =	cargo

BUILD_DEPENDS =		security/rust-ring

WRKSRC =		${WRKDIST}/mitmproxy-rs

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/target/wheels/*.whl

.include "crates.inc"

.include <bsd.port.mk>
