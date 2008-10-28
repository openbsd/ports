# $OpenBSD: Makefile,v 1.4 2008/10/28 16:08:32 steven Exp $

COMMENT=	object-oriented extensions to Tcl

VERSION=	3.3
DISTNAME=	itcl${VERSION}
PKGNAME=	itcl-${VERSION}p1
SHARED_LIBS=	itcl33	0.0

CATEGORIES=	devel lang/tcl

HOMEPAGE=	http://incrtcl.sourceforge.net/itcl/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

MODULES=	lang/tcl
MODTCL_VERSION=	8.4

RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}

SUBST_VARS=	VERSION

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--includedir=${PREFIX}/include/itcl${VERSION} \
		--libdir=${PREFIX}/lib/itcl${VERSION}

CONFIGURE_ENV=	CPPFLAGS="-I${MODTCL_INCDIR}/generic \
		-I${MODTCL_INCDIR}/unix" \
		LIBitcl33_VERSION=${LIBitcl33_VERSION}

do-regress:
	@cd ${WRKSRC} && ${SETENV} ITCL_LIBRARY=${WRKSRC}/library \
		${MODTCL_BIN} tests/all.tcl -load \
		"load ./libitcl33.so.${LIBitcl33_VERSION}"

.include <bsd.port.mk>
