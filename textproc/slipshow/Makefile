# build only on ocaml native (and it simplifies packaging)
ONLY_FOR_ARCHS =	${OCAML_NATIVE_ARCHS}

# - slipshow -> ppx_blob -> ppxlib -> sexplib0
# unmet availability conditions: 'arch != "arm32" & arch != "x86_32"'
NOT_FOR_ARCHS =		i386

COMMENT =		compiler from markdown to slipshow

GH_ACCOUNT =		panglesd
GH_PROJECT =		slipshow
GH_TAGNAME =		v0.0.33

CATEGORIES =		textproc

MAINTAINER =		Sebastien Marie <semarie@kapouay.eu.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m pthread ssl ev

MODULES +=		sysutils/opam \
			lang/ocaml

MODOPAM_REPO_COMMIT =	e25af452e64b0bd6672dce5f38d878780362341d
MODOPAM_REPO_NAME =	slipshow-opam-20250201

SITES.opamrepo =	https://kapouay.eu.org/pub/opam/
DISTFILES.opamrepo =	${MODOPAM_REPO_NAME}.tar.gz

# see modopam-external
BUILD_DEPENDS +=	devel/gmp,-main
LIB_DEPENDS +=		devel/libev

CONFIGURE_STYLE +=	opam

SEPARATE_BUILD =	Yes

post-install:
	rm -rf -- ${PREFIX}/lib/ocaml/slipshow

do-test:
	cd ${WRKSRC} && ${MODOPAM_OPAM_RUN} exec -- \
		dune runtest

.include <bsd.port.mk>
