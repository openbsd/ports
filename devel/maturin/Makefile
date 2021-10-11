# $OpenBSD: Makefile,v 1.6 2021/10/11 05:13:50 gnezdo Exp $

BROKEN-sparc64 =	ring-v0.16.20 does not support sparc64; re-check if an update uses newer ring

COMMENT =	develop crates with pyo3, rust-cpython and cffi bindings

GH_ACCOUNT =	PyO3
GH_PROJECT =	maturin
GH_TAGNAME =	v0.11.4

CATEGORIES =	devel

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# APACHE 2.0
PERMIT_PACKAGE =Yes

WANTLIB += bz2 c c++abi m pthread

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}

MODULES =	devel/cargo

CONFIGURE_STYLE =cargo

LIB_DEPENDS =	archivers/bzip2

.include "modules.inc"

.include <bsd.port.mk>
