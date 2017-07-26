# $OpenBSD: Makefile,v 1.32 2017/07/26 22:45:32 sthen Exp $

COMMENT=		text editor widget for FLTK

V=			0.4.5
DISTNAME=		fl_editor-${V}
PKGNAME=		fleditor-${V}
REVISION =		7

SHARED_LIBS=		fleditor 3.0
CATEGORIES=		x11

HOMEPAGE=		http://www.robertk.com/source/

# LPGL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

MASTER_SITES=		http://www.robertk.com/source/fl_editor/
EXTRACT_SUFX=		.tgz

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/fltk

TEST_TARGET=		test
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--enable-shared \
			--with-fltk=${LOCALBASE}
MAKE_ENV=		LIBfleditor_VERSION=${LIBfleditor_VERSION}

WRKDIST=		${WRKDIR}/fl_editor

TEST_IS_INTERACTIVE= x11

post-patch:
	@rmdir ${WRKSRC}/obj

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.so* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*.[Hh] ${PREFIX}/include/FL

.include <bsd.port.mk>
