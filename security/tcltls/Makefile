# $OpenBSD: Makefile,v 1.7 2011/01/05 18:04:58 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT=	OpenSSL Tcl extension

VERSION=	1.6
DISTNAME=	tls${VERSION}-src
PKGNAME=	tcltls-${VERSION}
SHARED_LIBS=	tls16	0.0

CATEGORIES=	security

HOMEPAGE=	http://tls.sourceforge.net/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ssl crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tls/}

MODULES=	lang/tcl

RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}

WRKDIST=	${WRKDIR}/tls${VERSION}
SEPARATE_BUILD =simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--libdir=${MODTCL_TCLDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=${MODTCL_INCDIR} \
		--with-ssl-dir=/usr \
		--includedir=${PREFIX}/include/tcltls \
		LIBtls16_VERSION=${LIBtls16_VERSION}
FAKE_FLAGS =	PKG_DIR=tls
REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcltls/
	${INSTALL_DATA} ${WRKDIST}/tls.htm \
		${PREFIX}/share/doc/tcltls/

.include <bsd.port.mk>
