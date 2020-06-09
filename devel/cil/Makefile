# $OpenBSD: Makefile,v 1.40 2020/06/09 17:34:13 chrisz Exp $

# build system needs per-arch tweaks and is very unfriendly to
# bytecode-only builds. powerpc nativecode is currently broken.
ONLY_FOR_ARCHS = ${OCAML_NATIVE_ARCHS}

COMMENT=	framework for analysis and transformation of C
CATEGORIES =	devel lang

REVISION =	2
DISTNAME =	cil-1.7.3
EXTRACT_SUFX =	.tar.gz
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=cil/}

HOMEPAGE=	https://cil-project.github.io/cil/

# BSD license
PERMIT_PACKAGE=	Yes

WANTLIB=		c m pthread

MODULES =		lang/ocaml
BUILD_DEPENDS=		sysutils/findlib \
			devel/ocaml-ocamlbuild \
			math/ocaml-num

CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.69
USE_GMAKE =		yes
TEST_TARGET =		test

OURFILES =		kerneltrace.ml nullint.ml randomvars.ml
CONFIGURE_ARGS =	EXTRAFEATURES="${OURFILES:R}"
P5SITE =		libdata/perl5/site_perl
P5INST =		${PREFIX}/${P5SITE}
SUBST_VARS +=		P5SITE

MAKE_FLAGS =		CC="${CC}" MAKE="${MAKE_PROGRAM}"

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH} == powerpc
PKG_ARGS += -Dtarget=ppc_OPENBSD
.else
# used for amd64 and i386
PKG_ARGS += -Dtarget=x86_OPENBSD
.endif

post-extract:
	cp ${FILESDIR}/*.ml ${WRKSRC}/src/ext

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/cilly ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/lib/patcher ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cil
	${INSTALL_PROGRAM} \
		${WRKBUILD}/_build/machdep-ml.exe \
		${PREFIX}/libexec/cil
	${INSTALL_DATA_DIR} ${P5INST}/CIL
	${INSTALL_DATA} ${WRKBUILD}/lib/App/Cilly/*.pm ${P5INST}/CIL/
	sed -e 's,@CILLIBDIR@,${LOCALBASE}/${P5SITE}/CIL,g' \
	    ${P5INST}/CIL/CilConfig.pm > ${P5INST}/CilConfig.pm

.include <bsd.port.mk>
