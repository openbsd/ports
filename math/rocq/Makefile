# Unconditionally attempts to build .cmxs files
ONLY_FOR_ARCHS=		${OCAML_NATIVE_DYNLINK_ARCHS}

COMMENT=		proof assistant based on a typed lambda calculus

# XXX: needs dune 3.8.3+ for rocq 9+
# XXX: needs lablgtk3 update to re-enable coqide

V =			8.20.1
DISTNAME =		coq-${V}
PKGNAME =		rocq-${V}
REVISION =		1

SITES =			https://github.com/rocq-prover/rocq/releases/download/V${V}/

CATEGORIES=		math
HOMEPAGE=		https://rocq-prover.org/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp m pthread

MODULES=	lang/ocaml

BUILD_DEPENDS=	x11/lablgtk3 \
		math/ocaml-zarith \
		shells/bash \
		sysutils/findlib \
		devel/dune

RUN_DEPENDS=	x11/lablgtk3 \
		math/ocaml-zarith \
		sysutils/findlib

LIB_DEPENDS=	devel/gmp

USE_GMAKE=	Yes

.include <bsd.port.arch.mk>

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-prefix ${PREFIX} \
		-configdir ${SYSCONFDIR}/xdg/coq

NO_TEST =	Yes

post-configure:
	cd ${WRKSRC} && ${MAKE_PROGRAM} dunestrap

do-build:
	cd ${WRKSRC} && \
		dune build -j ${MAKE_JOBS} -p coq-core,coq-stdlib,coqide-server,coq

do-install:
	cd ${WRKSRC} && \
		dune install -j ${MAKE_JOBS} coq-core coq-stdlib coqide-server coq

post-install:
	echo "COQLIB=\"${TRUEPREFIX}/lib/ocaml/coq\"" \
		> ${PREFIX}/bin/coq_environment.txt

.include <bsd.port.mk>
