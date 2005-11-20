# $OpenBSD: Makefile,v 1.9 2005/11/20 12:59:30 wilfried Exp $

COMMENT=		'FLTK Virtual Styles, List, Table, and Complex Table Widgets'

DISTNAME=		flvw-20000224
PKGNAME=		flvw-1.0p0
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

LIB_DEPENDS=		::x11/fltk

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -DFLTK_1_0_COMPAT -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# This regression test wants an X11 display
REGRESS_TARGET=		check
REGRESS_FLAGS+=         DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
REGRESS_IS_INTERACTIVE= Yes

WRKDIST=		${WRKDIR}/flvw
WRKSRC=			${WRKDIST}/1.0

pre-regress:
.for t in DISPLAY XAUTHORITY
.if !defined($t)
	@echo "$t needs to be set to run regress"; exit 1
.endif
.endfor

do-regress:
	@cd ${WRKBUILD}/test && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

do-install:
	${INSTALL_DATA} ${WRKBUILD}/lib/libflvw.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*H ${PREFIX}/include/FL

.include <bsd.port.mk>
