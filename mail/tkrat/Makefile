# $OpenBSD: Makefile,v 1.29 2015/02/16 22:57:09 naddy Exp $

COMMENT=	mail user agent for X in C with a Tcl/Tk frontend

DISTNAME=	tkrat-2.1.2
REVISION =	3
CATEGORIES=	mail x11

HOMEPAGE=	http://www.tkrat.org/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/tk
WANTLIB=	c crypto ssl

MASTER_SITES=	ftp://ftp.tkrat.org/pub/tkrat/

RUN_DEPENDS=	${MODTK_RUN_DEPENDS} x11/byzi
BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS}

MAKE_FLAGS=	BUSYLIB= DUMMYLIB= RATLIB_SUFFIX=.so.2.1 \
		LIB_DIR=\$${prefix}/lib/tcl/tkrat \
		DATA_DIR=\$${prefix}/lib/tcl/tkrat/app \
		SHLIB_LD='cc -shared'

FAKE_FLAGS=	UTIL_DIR=\$${prefix}/lib/tcl/tkrat/util

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${MODTCL_INCDIR}" \
		--with-tkconfig="${MODTK_LIBDIR}" \
		--program-transform-name='s/2[.]1//'

NO_TEST=	Yes

DOCS=	CONFIGURATION doc/interface doc/userproc.example doc/userprocs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	${INSTALL_DATA} ${DOCS:S!^!${WRKSRC}/!} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
