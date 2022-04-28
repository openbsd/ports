COMMENT=		setuptools Rust extension plugin

MODPY_EGG_VERSION=	1.2.0
DISTNAME=		setuptools-rust-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/PyO3/setuptools-rust

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST_ARGS=	setuptools_rust

FLAVORS=		python3
FLAVOR =		python3

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-semantic-version${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUN_DEPENDS+=		lang/rust
.endif

.include <bsd.port.mk>
