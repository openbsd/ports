# $OpenBSD: Makefile,v 1.10 2014/09/23 17:01:33 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT=	OpenSSL Tcl extension

VERSION=	1.6
DISTNAME=	tls${VERSION}-src
PKGNAME=	tcltls-${VERSION}
SHARED_LIBS=	tls16	1.0
REVISION=	0

CATEGORIES=	security

HOMEPAGE=	http://tls.sourceforge.net/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ssl crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tls/}

MODULES=	lang/tcl

RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}

WRKDIST=	${WRKDIR}/tls${VERSION}
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--libdir=${MODTCL_TCLDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=${MODTCL_INCDIR} \
		--with-ssl-dir=/usr \
		--includedir=${PREFIX}/include/tcltls \
		LIBtls16_VERSION=${LIBtls16_VERSION}
FAKE_FLAGS =	PKG_DIR=tls
TEST_TARGET=	test
CFLAGS +=	-DNO_SSL2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcltls/
	${INSTALL_DATA} ${WRKDIST}/tls.htm \
		${PREFIX}/share/doc/tcltls/

.include <bsd.port.mk>
