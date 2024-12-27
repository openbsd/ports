# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Rust components used in mitmproxy

MODPY_DISTV =		0.10.7
REVISION =		2
DISTNAME =		mitmproxy_rs-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://mitmproxy.org/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m pthread

DIST_TUPLE +=		github smoltcp-rs smoltcp ef67e7b46cabf49783053cbf68d8671ed97ff8d4 smoltcp
DIST_TUPLE +=		github cloudflare boringtun e3252d9c4f4c8fc628995330f45369effd4660a1 boringtun

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

WRKSRC =		${WRKDIST}/mitmproxy-rs
MODCARGO_CARGOLOCK =	${WRKDIST}/Cargo.lock

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/../pyproject.toml

.include "crates.inc"

.include <bsd.port.mk>
