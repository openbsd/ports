# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Rust components used in mitmproxy

MODPY_EGG_VERSION =	0.9.2
DISTNAME =		mitmproxy_rs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://mitmproxy.org/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m pthread

DIST_TUPLE +=		github smoltcp-rs smoltcp ef67e7b46cabf49783053cbf68d8671ed97ff8d4 smoltcp
DIST_TUPLE +=		github cloudflare boringtun e3252d9c4f4c8fc628995330f45369effd4660a1 boringtun

MODULES =		devel/cargo \
			lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

MODCARGO_CARGO_BIN =	maturin
CONFIGURE_STYLE =	cargo

WRKSRC =		${WRKDIST}/mitmproxy-rs

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/target/wheels/*.whl

.include "crates.inc"

.include <bsd.port.mk>
