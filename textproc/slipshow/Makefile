# build only on ocaml native (and it simplifies packaging)
ONLY_FOR_ARCHS =	${OCAML_NATIVE_ARCHS}

# aarch64:
# cc: error: unsupported option '-mpopcnt' for target 'aarch64-unknown-openbsd7.7' 
# i386:
# - slipshow -> ppx_blob -> ppxlib -> sexplib0
# unmet availability conditions: 'arch != "arm32" & arch != "x86_32"'
NOT_FOR_ARCHS =		aarch64 i386

COMMENT =		compiler from markdown to slipshow

V =			0.1.0
DISTNAME =		slipshow-${V}
EXTRACT_SUFX =		.tbz
HOMEPAGE =		https://github.com/panglesd/slipshow

CATEGORIES =		textproc

MAINTAINER =		Sebastien Marie <semarie@kapouay.eu.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m pthread ssl ev

MODULES +=		sysutils/opam \
			lang/ocaml

MODOPAM_REPO_COMMIT =	862a7640b194b6ef60dc2d24341920e48dd021fe
MODOPAM_REPO_NAME =	slipshow-opam-20250307
MODOPAM_PACKAGES =	slipshow.${V}

SITES =			https://github.com/panglesd/slipshow/releases/download/v${V}/

# https://github.com/panglesd/brr.git#bindings-window-inner-size
COMMIT.brr =		1de3a5c774360b97f413090c181afebc94bff569
DIST_TUPLE +=		github panglesd brr ${COMMIT.brr} brr

SITES.opamrepo =	https://kapouay.eu.org/pub/opam/
DISTFILES.opamrepo =	${MODOPAM_REPO_NAME}.tar.gz

BUILD_DEPENDS +=	devel/gmp,-main \
			devel/libffi \
			shells/bash
LIB_DEPENDS +=		devel/libev

CONFIGURE_STYLE +=	opam

SEPARATE_BUILD =	Yes

post-install:
	rm -rf -- ${PREFIX}/lib/ocaml/slipshow

do-test:
	cd ${WRKSRC} && ${MODOPAM_OPAM_RUN} exec -- \
		dune runtest

.include <bsd.port.mk>
