# $OpenBSD: Makefile,v 1.20 2006/04/10 05:43:49 jakob Exp $

COMMENT=	"OO toolkit for SGML parsing and entity management"

DISTNAME=	sp-1.3.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	textproc
HOMEPAGE=	http://www.jclark.com/sp/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ 

MASTER_SITES=	ftp://ftp.jclark.com/pub/sp/

MAKE_FLAGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -fno-implicit-templates -ansi" \
		DEFINES="-DSP_HAVE_BOOL -DSP_ANSI_CLASS_INST -DSP_MULTI_BYTE \
		         -DSP_HAVE_SOCKET" \
		RANLIB="${RANLIB}"

FAKE_FLAGS=	prefix=${DESTDIR}${PREFIX} \
		INSTALL="${INSTALL_PROGRAM}"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sp
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${PREFIX}/share/doc/sp
	${INSTALL} -o ${LIBOWN} -g ${LIBGRP} -m ${LIBMODE} \
		${WRKBUILD}/lib/libsp.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/sp
	${INSTALL_DATA} ${WRKSRC}/include/* ${PREFIX}/include/sp
	${INSTALL_DATA} ${WRKSRC}/generic/* ${PREFIX}/include/sp

.include <bsd.port.mk>
