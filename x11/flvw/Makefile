# $OpenBSD: Makefile,v 1.15 2010/09/22 12:48:58 ajacoutot Exp $

COMMENT=		FLTK Virtual styles, list, table, and complex table Widgets

DISTNAME=		flvw-20000224
PKGNAME=		flvw-1.0
REVISION=		1

CATEGORIES=		x11 devel

HOMEPAGE=		http://flvw.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flvw/}

EXTRACT_SUFX=		.tgz

BUILD_DEPENDS=		::x11/fltk
RUN_DEPENDS=		::x11/fltk

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -DFLTK_1_0_COMPAT -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

REGRESS_TARGET=		check
REGRESS_IS_INTERACTIVE= x11

WRKDIST=		${WRKDIR}/flvw
WRKSRC=			${WRKDIST}/1.0

do-regress:
	@cd ${WRKBUILD}/test && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

do-install:
	${INSTALL_DATA} ${WRKBUILD}/lib/libflvw.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*H ${PREFIX}/include/FL

.include <bsd.port.mk>
