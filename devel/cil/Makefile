# $OpenBSD: Makefile,v 1.31 2014/08/22 22:49:07 kili Exp $

# build system needs per-arch tweaks
ONLY_FOR_ARCHS = amd64 i386 powerpc

COMMENT=	framework for analysis and transformation of C
CATEGORIES =	devel lang

DISTNAME =	cil-1.5.1
REVISION =      5
EXTRACT_SUFX =	.tar.gz
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=cil/}

HOMEPAGE=	http://kerneis.github.com/cil/

# BSD license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses m pthread

MODULES =		lang/ocaml
BUILD_DEPENDS=		sysutils/findlib

CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.69
USE_GMAKE =		yes
ALL_TARGET =		setup
TEST_TARGET =	check

OURFILES =		kerneltrace.ml nullint.ml randomvars.ml
CONFIGURE_ARGS =	EXTRAFEATURES="${OURFILES:R}"
P5SITE =		libdata/perl5/site_perl
P5INST =		${PREFIX}/${P5SITE}
SUBST_VARS +=		P5SITE
GCC =			/usr/bin/gcc# cant use CC in case it's set to cilly

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
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/patcher ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cil
	${INSTALL_PROGRAM} \
		${WRKBUILD}/obj/*_OPENBSD/machdep-ml.exe \
		${PREFIX}/libexec/cil
	${INSTALL_DATA_DIR} ${P5INST}/CIL
	mv ${PREFIX}/lib/*.pm ${P5INST}/CIL/
	sed -e 's,@CILLIBDIR@,${LOCALBASE}/${P5SITE}/CIL,g' \
	    ${P5INST}/CIL/CilConfig.pm > ${P5INST}/CilConfig.pm

.include <bsd.port.mk>
