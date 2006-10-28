# $OpenBSD: Makefile,v 1.2 2006/10/28 17:52:18 steven Exp $

COMMENT=	"object-oriented extensions to Tcl"

VERSION=	3.3
DISTNAME=	itcl${VERSION}
PKGNAME=	itcl-${VERSION}p0
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

RUN_DEPENDS=	:tcl-${TCL_VERSION}.*:lang/tcl/${TCL_VERSION}
BUILD_DEPENDS=	${RUN_DEPENDS}

TCL_VERSION=	8.4

SUBST_VARS=	VERSION

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION} \
		--includedir=${LOCALBASE}/include/itcl${VERSION} \
		--libdir=${LOCALBASE}/lib/itcl${VERSION}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/tcl${TCL_VERSION}/generic \
		-I${LOCALBASE}/include/tcl${TCL_VERSION}/unix" \
		LIBitcl33_VERSION=${LIBitcl33_VERSION}

do-regress:
	@cd ${WRKSRC} && ${SETENV} ITCL_LIBRARY=${WRKSRC}/library \
		${PREFIX}/bin/tclsh${TCL_VERSION} tests/all.tcl -load \
		"load ./libitcl33.so.${LIBitcl33_VERSION}"

.include <bsd.port.mk>
