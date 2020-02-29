# $OpenBSD: Makefile,v 1.4 2020/02/29 03:00:03 thfr Exp $

BROKEN =	calls to curl(1) and autodetection of CPUs break bulk builds

COMMENT =	toolkit for the Haxe programming language

V =		4.0.5
DISTNAME =	haxe-${V}
REVISION =	0

GH_ACCOUNT =	HaxeFoundation
GH_PROJECT =	haxe
GH_TAGNAME =	${V}

XML_LIGHT_V =	2.4
HAXELIB =	4b27f91d8a4ff279d9903091680fee2c93a0d574
HX3COMPAT =	f1f18201e5c0479cb5adf5f6028788b37f37b730

MASTER_SITES0 =	https://github.com/rfht/haxe-ocamldeps/releases/download/${V}/
MASTER_SITES1 =	https://github.com/HaxeFoundation/haxelib/archive/
MASTER_SITES2 =	https://github.com/haxefoundation/hx3compat/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		haxe-ocamldeps-${V}.tar.gz:0 \
		${HAXELIB}.tar.gz:1 \
		${HX3COMPAT}.tar.gz:2

CATEGORIES =	lang devel
HOMEPAGE =	https://haxe.org
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+ (Haxe compiler), MIT (standard lib and Neko virtual machine)
# OCaml build deps: LGPL 2.1, BSD-2-clause, ISC, MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c gc m neko pcre pthread z

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/dune \
			devel/ocaml-cppo \
			lang/nekovm \
			lang/ocaml-camlp5 \
			shells/bash \
			sysutils/findlib
LIB_DEPENDS =		devel/boehm-gc \
			devel/pcre \
			lang/nekovm

MAKE_FLAGS +=		OCAMLPATH=${WRKSRC}/ocamldeps/ppx_derivers/_build/install/default/lib:${WRKSRC}/ocamldeps/ocaml-migrate-parsetree/_build/install/default/lib:${WRKSRC}/ocamldeps/gen/_build/install/default/lib:${WRKSRC}/ocamldeps/ppx_tools_versioned/_build/install/default/lib:${WRKSRC}/ocamldeps/ocaml-extlib:${WRKSRC}/ocamldeps/sedlex/_build/install/default/lib:${WRKSRC}/ocamldeps:${WRKSRC}/ocamldeps/ptmap/dist/build:${WRKSRC}/ocamldeps/ocaml-sha/_build/install/default/lib \
			PATH=${PATH}:${WRKSRC}/ocamldeps:${WRKSRC}/ocamldeps/obuild/dist/build/obuild

USE_GMAKE =		Yes

# tests/README.md contains some instructions for TravisCI, AppVeyor, SauceLabs,
# unit, and cpp unit tests. Unit tests require graphical browser.
NO_TEST =		Yes

post-extract:
	rmdir ${WRKSRC}/extra/haxelib_src
	ln -s ${WRKDIR}/haxelib-${HAXELIB} ${WRKSRC}/extra/haxelib_src
	rmdir ${WRKSRC}/extra/haxelib_src/hx3compat
	ln -s ${WRKDIR}/hx3compat-${HX3COMPAT} ${WRKSRC}/extra/haxelib_src/hx3compat
	ln -s ${WRKDIR}/haxe-ocamldeps ${WRKSRC}/ocamldeps

do-gen:
	${SUBST_CMD} ${WRKSRC}/src/compiler/main.ml

do-build:
	cd ${WRKSRC}/ocamldeps/obuild; OCAML_COLOR=never ./bootstrap
	for odep in \
		ppx_derivers\
		gen\
		ocaml-migrate-parsetree\
		ppx_tools_versioned\
		ocaml-sha\
		ptmap\
	; do \
		cd ${WRKSRC}/ocamldeps/$$odep ; \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET} \
	; done
	cd ${WRKSRC}/ocamldeps/sedlex; \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} build
	cd ${WRKSRC}/ocamldeps/ocaml-extlib; \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} minimal=1 build
	cd ${WRKSRC}/ocamldeps/xml-light; \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} all opt
	mv ${WRKSRC}/ocamldeps/ocaml-extlib/{src,extlib}
	cd ${WRKSRC}/ocamldeps ; \
		cp xml-light/META{.in,} ; \
		sed -itmp "s|@VERSION@|${XML_LIGHT_V}|g" xml-light/META
	mv ${WRKSRC}/ocamldeps/ptmap/dist/build/{lib-,}ptmap
	cp ${FILESDIR}/ptmap-META ${WRKSRC}/ocamldeps/ptmap/dist/build/ptmap/META
	cd ${WRKSRC} ; \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}

.include <bsd.port.mk>
