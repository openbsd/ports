# $OpenBSD: Makefile,v 1.4 2010/07/07 21:29:58 ajacoutot Exp $

COMMENT=		plugin password complexity checker for passwd(1)

DISTNAME=		passwdqc-1.2.2
CATEGORIES=     	security sysutils

SHARED_LIBS=		passwdqc 0.0 # .0

HOMEPAGE=		http://www.openwall.com/passwdqc/

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes

ALL_TARGET=		utils
INSTALL_TARGET=		install_lib install_utils

MAKE_FLAGS=	CC=${CC} \
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
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/passwdqc

.include <bsd.port.mk>
