# $OpenBSD: Makefile,v 1.2 2021/06/21 21:07:31 sthen Exp $

COMMENT =	develop crates with pyo3, rust-cpython and cffi bindings

GH_ACCOUNT =	PyO3
GH_PROJECT =	maturin
GH_TAGNAME =	v0.10.6

CATEGORIES =	devel

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# APACHE 2.0
PERMIT_PACKAGE =Yes

WANTLIB += bz2 c c++abi m pthread

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}

MODULES =	devel/cargo

CONFIGURE_STYLE =cargo

LIB_DEPENDS =	archivers/bzip2

.include "./modules.inc"

.include <bsd.port.mk>
