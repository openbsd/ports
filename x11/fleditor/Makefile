# $OpenBSD: Makefile,v 1.3 2001/04/17 19:02:39 naddy Exp $

COMMENT=		'Text Editor for FLTK'

DISTNAME=		fl_editor-0.4.1
PKGNAME=		fleditor-0.4.1
CATEGORIES=		x11
NEED_VERSION=		1.380

HOMEPAGE=		http://www.robertk.com/source/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.robertk.com/pub/Source/fl_editor/
EXTRACT_SUFX=		.tgz

LIB_DEPENDS=		fltk.::x11/fltk
BUILD_DEPENDS=		${LOCALBASE}/lib/libflvw.a::x11/flvw

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-fltk=${LOCALBASE}

post-patch:
	@rmdir ${WRKSRC}/obj

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.a ${PREFIX}/lib
.if !defined(NO_SHARED_LIBS)
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.so* ${PREFIX}/lib
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*.[Hh] ${PREFIX}/include/FL

.include <bsd.port.mk>
