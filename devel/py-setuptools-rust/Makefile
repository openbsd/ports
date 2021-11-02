# $OpenBSD: Makefile,v 1.4 2021/11/02 00:01:01 sthen Exp $

COMMENT=		setuptools Rust extension plugin

MODPY_EGG_VERSION=	0.12.1
DISTNAME=		setuptools-rust-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		https://github.com/PyO3/setuptools-rust

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=		python3

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-semantic-version${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			lang/rust \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
