# $OpenBSD: Makefile,v 1.31 2019/07/12 20:50:15 sthen Exp $

COMMENT=	OO toolkit for SGML parsing and entity management

DISTNAME=	sp-1.3.4
REVISION =	6
CATEGORIES=	textproc
HOMEPAGE=	http://www.jclark.com/sp/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} 

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	ftp://ftp.jclark.com/pub/sp/

MAKE_FLAGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -fno-implicit-templates -ansi" \
		DEFINES="-DSP_HAVE_BOOL -DSP_ANSI_CLASS_INST -DSP_MULTI_BYTE \
		         -DSP_HAVE_SOCKET" \
		RANLIB="${RANLIB}"

FAKE_FLAGS=	prefix=${DESTDIR}${PREFIX} \
		INSTALL="${INSTALL_PROGRAM}"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sp
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${PREFIX}/share/doc/sp
	${INSTALL} -o ${LIBOWN} -g ${LIBGRP} -m ${LIBMODE} \
		${WRKBUILD}/lib/libsp.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/sp
	${INSTALL_DATA} ${WRKSRC}/include/* ${PREFIX}/include/sp
	${INSTALL_DATA} ${WRKSRC}/generic/* ${PREFIX}/include/sp

.include <bsd.port.mk>
