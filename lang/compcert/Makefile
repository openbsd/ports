ONLY_FOR_ARCHS =	aarch64 amd64 i386 powerpc

COMMENT =		high assurance C compiler

V =			3.13.1
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
GH_TAGNAME =		v${V}
DISTNAME =		${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		1

HOMEPAGE =		https://compcert.org/

CATEGORIES =		lang

# INRIA Non-Commercial License Agreement.
PERMIT_PACKAGE =	Yes

WANTLIB	+= c m

COMPILER	= ports-gcc

USE_GMAKE	= Yes

CONFIGURE_STYLE = simple
CONFIGURE_ARGS  = -mandir ${PREFIX}/man \
		  -libdir ${PREFIX}/lib \
		  -sharedir ${PREFIX}/share/compcert \
		  -toolprefix e \
		  -no-standard-headers \
		  ${MACHINE_ARCH}-bsd

BUILD_DEPENDS =	lang/ocaml>=4.05 \
		math/coq>=8.12.0 \
		sysutils/findlib \
		devel/ocaml-menhir>=20190626

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mgcc49}
RUN_DEPENDS =	lang/gcc/${MODGCC4_VERSION}
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert

.include <bsd.port.mk>
