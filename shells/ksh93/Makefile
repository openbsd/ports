COMMENT =		AT&T Korn Shell

GH_ACCOUNT =		ksh93
GH_PROJECT =		ksh
GH_TAGNAME =		v1.0.0-beta.2
PKGNAME =		ksh93-1.0.0beta2
EPOCH =			0

CATEGORIES =		shells

HOMEPAGE =		https://github.com/ksh93/ksh

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# EPL
PERMIT_PACKAGE =	Yes

WANTLIB += c m util

MAKE_ENV =		CC="${CC}" CCFLAGS="${CFLAGS}" LDFLAGS="-lm" \
			SHELL=/bin/sh TMPDIR="${WRKDIR}"

USE_GROFF =		Yes

HOSTTYPE =		openbsd.${MACHINE_ARCH}
AST_ARCH =		${WRKSRC}/arch/${HOSTTYPE}
AST_INC =		${AST_ARCH}/include/ast

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} /bin/sh bin/package make \
		HOSTTYPE="${HOSTTYPE}"

do-install:
	${INSTALL_PROGRAM} ${AST_ARCH}/bin/ksh ${PREFIX}/bin/ksh93
	cd ${PREFIX}/bin && ln ksh93 rksh93
	${INSTALL_DATA} ${AST_ARCH}/lib/lib{ast,cmd,shell}.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ksh93
	${INSTALL_DATA} ${AST_ARCH}/fun/* ${PREFIX}/share/examples/ksh93
	${INSTALL_MAN} ${AST_ARCH}/man/man1/sh.1 ${PREFIX}/man/man1/ksh93.1
	cd ${PREFIX}/man/man1 && ln ksh93.1 rksh93.1
	${INSTALL_MAN} ${AST_ARCH}/man/man3/shell.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/ast* ${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/{sfio,sfio_s,shell,cdt,nval,option}.h \
		${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/prototyped.h ${PREFIX}/include/ast

do-test:
	cd ${WRKSRC}/src/cmd/ksh93/tests && env -i \
		SHELL=${AST_ARCH}/bin/ksh \
		TMPDIR=${WRKDIR} \
		${AST_ARCH}/bin/ksh shtests

.include <bsd.port.mk>
