# $OpenBSD: Makefile,v 1.1.1.1 2006/10/25 14:24:03 steven Exp $

COMMENT=	"object-oriented extensions to Tcl"

VERSION=	3.3
DISTNAME=	itcl${VERSION}
PKGNAME=	itcl-${VERSION}
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

RUN_DEPENDS=	:tcl-8.4.*:lang/tcl/8.4
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${LOCALBASE}/lib/tcl8.4 \
		--includedir=${LOCALBASE}/include/itcl \
		--libdir=${LOCALBASE}/lib/itcl

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/tcl8.4/generic \
		-I${LOCALBASE}/include/tcl8.4/unix" \
		LIBitcl33_VERSION=${LIBitcl33_VERSION}

do-regress:
	@cd ${WRKSRC} && ${SETENV} ITCL_LIBRARY=${WRKSRC}/library \
		${PREFIX}/bin/tclsh8.4 tests/all.tcl -load \
		"load ./libitcl33.so.${LIBitcl33_VERSION}"

.include <bsd.port.mk>
