# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:37 sthen Exp $

COMMENT=	OpenSSL Tcl extension

VERSION=	1.6

DISTNAME=	tls${VERSION}-src
PKGNAME=	tcltls-${VERSION}
REVISION=	3

CATEGORIES=	security

HOMEPAGE=	http://tls.sourceforge.net/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ssl crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tls/}

MODULES=	lang/tcl

RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}

WRKDIST=	${WRKDIR}/tls${VERSION}
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--libdir=${MODTCL_TCLDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=${MODTCL_INCDIR} \
		--with-ssl-dir=/usr \
		--includedir=${PREFIX}/include/tcltls

FAKE_FLAGS =	PKG_DIR='$$(PACKAGE_NAME)' INSTALL_PROGRAM='$$(INSTALL_DATA)'
INSTALL_TARGET=	install-binaries
TEST_TARGET=	test
CFLAGS +=	-DNO_SSL2 -DNO_SSL3
SUBST_VARS=	VER

VER=		${VERSION:S/.//g}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcltls/
	${INSTALL_DATA} ${WRKDIST}/tls.htm \
		${PREFIX}/share/doc/tcltls/

.include <bsd.port.mk>
