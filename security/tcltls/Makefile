# $OpenBSD: Makefile,v 1.1.1.1 2007/02/02 16:23:10 steven Exp $

COMMENT=	"OpenSSL Tcl extension"

VERSION=	1.5.0
DISTNAME=	tls${VERSION}-src
PKGNAME=	tcltls-${VERSION}
SHARED_LIBS=	tls150	0.0

CATEGORIES=	security lang/tcl

HOMEPAGE=	http://tls.sourceforge.net/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ssl crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tls/}

RUN_DEPENDS=	:tcl-${TCL_VERSION}.*:lang/tcl/${TCL_VERSION}
BUILD_DEPENDS=	${RUN_DEPENDS}

TCLTLS=		tls1.5
TCL_VERSION=	8.4
SUBST_VARS+=	TCLTLS

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION} \
		--with-tclinclude=${LOCALBASE}/include/tcl${TCL_VERSION} \
		--with-ssl-dir=/usr

MAKE_FLAGS=	MYCFLAGS="${CFLAGS}"

WRKDIST=	${WRKDIR}/${TCLTLS}

REGRESS_TARGET=	test

LIBFILE=	libtls150.so.${LIBtls150_VERSION}

pre-configure:
	perl -pi -e 's,\$$tls_LIB_FILE,${LIBFILE},' ${WRKBUILD}/configure

do-install:
	${INSTALL_DATA} ${WRKBUILD}/${LIBFILE} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${TCLTLS}
	${INSTALL_DATA} ${WRKBUILD}/pkgIndex.tcl ${PREFIX}/lib/${TCLTLS}
	${INSTALL_DATA} ${WRKBUILD}/tls.tcl ${PREFIX}/lib/${TCLTLS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcltls
	${INSTALL_DATA} ${WRKSRC}/tls.htm ${PREFIX}/share/doc/tcltls

.include <bsd.port.mk>
