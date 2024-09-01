COMMENT =		AT&T Korn Shell

V =			1.0.10
GH_ACCOUNT =		ksh93
GH_PROJECT =		ksh
GH_TAGNAME =		v${V}
PKGNAME =		ksh93-$V
EPOCH =			0

SO_VERSION =		0.0

SHARED_LIBS +=  ast                       ${SO_VERSION} # 0.0
SHARED_LIBS +=  cmd                       ${SO_VERSION} # 0.0
SHARED_LIBS +=  dll                       ${SO_VERSION} # 0.0
SHARED_LIBS +=  shell                     ${SO_VERSION} # 0.0

CATEGORIES =		shells

HOMEPAGE =		https://github.com/ksh93/ksh

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# EPL
PERMIT_PACKAGE =	Yes

WANTLIB += c m util

MAKE_ENV =		CC="${CC}" CCFLAGS="${CFLAGS}" LDFLAGS="-lm" \
			SHELL=/bin/sh TMPDIR="${WRKDIR}" \
			DYLIB_VERSION="${SO_VERSION}"

USE_GROFF =		Yes

HOSTTYPE =		openbsd.${MACHINE_ARCH}
AST_ARCH =		${WRKSRC}/arch/${HOSTTYPE}
AST_INC =		${AST_ARCH}/include/ast

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} /bin/sh bin/package make \
		HOSTTYPE="${HOSTTYPE}"

do-install:
	${INSTALL_PROGRAM} ${AST_ARCH}/dyn/bin/ksh ${PREFIX}/bin/ksh93
	cd ${PREFIX}/bin && ln ksh93 rksh93
	${INSTALL_DATA} ${AST_ARCH}/lib/lib{ast,cmd,dll,shell}.a \
		${PREFIX}/lib
	${INSTALL_DATA} \
		${AST_ARCH}/dyn/lib/lib{ast,cmd,dll,shell}.so.${SO_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ksh93
	${INSTALL_DATA} ${AST_ARCH}/fun/* ${PREFIX}/share/examples/ksh93
	${INSTALL_MAN} ${AST_ARCH}/man/man1/sh.1 ${PREFIX}/man/man1/ksh93.1
	cd ${PREFIX}/man/man1 && ln ksh93.1 rksh93.1
	${INSTALL_MAN} ${AST_ARCH}/man/man3/shell.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/* ${PREFIX}/include/ast

do-test:
	cd ${WRKSRC} && env -i ${MAKE_ENV} /bin/sh bin/package test \
		HOSTTYPE="${HOSTTYPE}"

.include <bsd.port.mk>
