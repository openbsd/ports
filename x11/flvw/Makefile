# $OpenBSD: Makefile,v 1.3 2001/04/17 19:02:40 naddy Exp $

COMMENT=		'FLTK Virtual Styles, List, Table, and Complex Table Widgets'

DISTNAME=		flvw-20000224
PKGNAME=		flvw-1.0
CATEGORIES=		devel
NEED_VERSION=		1.380

HOMEPAGE=		http://flvw.sourceforge.net/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	flvw

EXTRACT_SUFX=		.tgz

LIB_DEPENDS=		fltk.::x11/fltk

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

WRKDIST=		${WRKDIR}/flvw
WRKSRC=			${WRKDIST}/1.0

do-install:
	${INSTALL_DATA} ${WRKBUILD}/lib/libflvw.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*H ${PREFIX}/include/FL

.include <bsd.port.mk>
