COMMENT=		setuptools Rust extension plugin

MODPY_EGG_VERSION=	1.8.1
DISTNAME=		setuptools-rust-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/PyO3/setuptools-rust

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools_scm
MODPY_PYTEST_ARGS=	setuptools_rust

FLAVORS=		python3
FLAVOR =		python3

RUN_DEPENDS=		devel/py-semantic-version${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUN_DEPENDS+=		lang/rust
.endif

.include <bsd.port.mk>
