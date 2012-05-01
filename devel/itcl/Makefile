# $OpenBSD: Makefile,v 1.11 2012/05/01 06:58:45 sebastia Exp $

COMMENT=	object-oriented extensions to Tcl

VERSION =	3.4.1
REVISION =	0
EPOCH =		0
DISTNAME =	itcl${VERSION}
PKGNAME =	itcl-${VERSION}
SHARED_LIBS=	itcl34	0.0

CATEGORIES=	devel

HOMEPAGE=	http://incrtcl.sourceforge.net/itcl/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

MODULES=	lang/tcl

RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}

SUBST_VARS=	VERSION

WRKDIST=	${WRKDIR}/itcl${VERSION}

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--libdir=${MODTCL_TCLDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=${MODTCL_INCDIR} \
		--includedir=${PREFIX}/include/itcl

CONFIGURE_ENV=	CPPFLAGS="-I${MODTCL_INCDIR}/generic \
		-I${MODTCL_INCDIR}/unix -I${MODTCL_INCDIR}" \
		SHLIB_VERSION=${LIBitcl34_VERSION}
FAKE_FLAGS =	libdir=${MODTCL_TCLDIR}/itcl

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

do-regress:
	@cd ${WRKSRC} && ${SETENV} ITCL_LIBRARY=${WRKSRC}/library \
		${MODTCL_BIN} tests/all.tcl -load \
		"load ./libitcl34.so.${LIBitcl34_VERSION}"

.include <bsd.port.mk>
