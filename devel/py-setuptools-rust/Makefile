COMMENT=	setuptools Rust extension plugin

MODPY_DISTV=	1.10.2
DISTNAME=	setuptools_rust-${MODPY_DISTV}
PKGNAME=	py-setuptools-rust-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/PyO3/setuptools-rust

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST_ARGS= setuptools_rust

RUN_DEPENDS=	devel/py-semantic-version \
		devel/py-setuptools \
		devel/py-typing-extensions

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUN_DEPENDS+=	lang/rust
.endif

.include <bsd.port.mk>
