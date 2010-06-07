# $OpenBSD: Makefile,v 1.6 2010/06/07 14:39:46 sthen Exp $

COMMENT=	object-oriented extensions to Tcl

VERSION=	3.4
DISTNAME=	itcl${VERSION}b1
PKGNAME=	itcl-${VERSION}b1
SHARED_LIBS=	itcl34	0.0

CATEGORIES=	devel

HOMEPAGE=	http://incrtcl.sourceforge.net/itcl/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

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
		--with-tcl=${MODTCL_LIBDIR} \
		--includedir=${PREFIX}/include/itcl${VERSION} \
		--libdir=${PREFIX}/lib/itcl${VERSION}

CONFIGURE_ENV=	CPPFLAGS="-I${MODTCL_INCDIR}/generic \
		-I${MODTCL_INCDIR}/unix" \
		LIBitcl34_VERSION=${LIBitcl34_VERSION}

SUBST_VARS=VERSION

do-regress:
	@cd ${WRKSRC} && ${SETENV} ITCL_LIBRARY=${WRKSRC}/library \
		${MODTCL_BIN} tests/all.tcl -load \
		"load ./libitcl34.so.${LIBitcl34_VERSION}"

.include <bsd.port.mk>
