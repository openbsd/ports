COMMENT=	Python implementation of the patiencediff algorithm

ONLY_FOR_ARCHS=	${RUST_ARCHS}

MODPY_DISTV=	0.2.18
# use github; sdist is missing Cargo.lock
GH_ACCOUNT=	breezy-team
GH_PROJECT=	patiencediff
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/breezy-team/patiencediff

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools-rust

# otherwise extension is not found and relevant tests are skipped
MODPY_TEST_LINK_SO= Yes

.include "crates.inc"
.include <bsd.port.mk>
