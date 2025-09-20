# build only on ocaml native (and it simplifies packaging)
ONLY_FOR_ARCHS =	${OCAML_NATIVE_ARCHS}

# - slipshow -> ppx_blob -> ppxlib -> sexplib0
# unmet availability conditions: 'arch != "arm32" & arch != "x86_32"'
NOT_FOR_ARCHS =		i386

COMMENT =		compiler from markdown to slipshow

V =			0.4.1
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

MODOPAM_REPO_COMMIT =	7642f16f78138f8b24bab572ff0f42bc412927c2
MODOPAM_REPO_NAME =	slipshow-opam-20250717
MODOPAM_PACKAGES =	slipshow.${V}

SITES =			https://github.com/panglesd/slipshow/releases/download/v${V}/

SITES.opamrepo =	https://github.com/semarie/openbsd-opam-dependencies/releases/download/openbsd/
DISTFILES.opamrepo =	${MODOPAM_REPO_NAME}.tar.gz

BUILD_DEPENDS +=	devel/gmp,-main \
			devel/libffi \
			shells/bash
LIB_DEPENDS +=		devel/libev

CONFIGURE_STYLE +=	opam

SEPARATE_BUILD =	Yes

post-patch:
	sed -i 's/v${V}/${V}/' ${WRKSRC}/dune-project

post-install:
	rm -rf -- ${PREFIX}/lib/ocaml/slipshow

do-test:
	cd ${WRKSRC} && ${MODOPAM_OPAM_RUN} exec -- \
		dune runtest

.include <bsd.port.mk>
