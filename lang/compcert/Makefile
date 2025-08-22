BROKEN-i386 =		linker/relocation errors following update to ocaml 4.14.2
BROKEN-powerpc =	needs a small diff to work

# !amd64 platforms need more work
#ONLY_FOR_ARCHS =	aarch64 amd64 i386 powerpc
ONLY_FOR_ARCHS =	amd64

COMMENT =		high assurance C compiler

V =			3.15
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
#GH_TAGNAME =		v${V}
GH_COMMIT =		1373cbdff7316f17834850e29cf6794ea3b806be
DISTNAME =		${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		10

CATEGORIES =		lang

HOMEPAGE =		https://compcert.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# INRIA Non-Commercial License Agreement.
PERMIT_PACKAGE =	Yes

WANTLIB	+= c m pthread

USE_GMAKE	= Yes

CONFIGURE_STYLE = simple
CONFIGURE_ARGS  = -mandir ${PREFIX}/man \
		  -libdir ${PREFIX}/lib \
		  -sharedir ${PREFIX}/share/compcert \
		  -no-standard-headers \
		  ${MACHINE_ARCH}-bsd

BUILD_DEPENDS =	lang/ocaml>=4.05 \
		math/rocq>=8.15.0 \
		sysutils/findlib \
		devel/ocaml-menhir>=20200624

# test suite was separated out (see AbsInt/CompCert-small-tests on github)
NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert

.include <bsd.port.mk>
