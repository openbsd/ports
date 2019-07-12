# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:09 sthen Exp $

COMMENT=		complexity checker for passwd(1) and password generator

DISTNAME=		passwdqc-1.3.1
CATEGORIES=		security sysutils
REVISION=		0
FIX_EXTRACT_PERMISSIONS=Yes

SHARED_LIBS=		passwdqc 0.0 # .0

HOMEPAGE=		http://www.openwall.com/passwdqc/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		http://www.openwall.com/passwdqc/

NO_TEST=		Yes

ALL_TARGET=		utils
INSTALL_TARGET=		install_lib install_utils

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		BINDIR=${PREFIX}/bin \
		SHARED_LIBDIR=${PREFIX}/lib \
		DEVEL_LIBDIR=${PREFIX}/lib \
		INCLUDEDIR=${PREFIX}/include \
		MANDIR=${PREFIX}/man \
		CONFDIR=${PREFIX}/share/examples/passwdqc \
		SHARED_LIB=libpasswdqc.so.${LIBpasswdqc_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pwqcheck.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/passwdqc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/passwdqc
	${INSTALL_DATA} ${WRKSRC}/pwqcheck.php ${PREFIX}/share/examples/passwdqc

.include <bsd.port.mk>
