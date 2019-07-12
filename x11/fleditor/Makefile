# $OpenBSD: Makefile,v 1.34 2019/07/12 20:51:11 sthen Exp $

COMMENT=		text editor widget for FLTK

V=			0.4.5
DISTNAME=		fl_editor-${V}
PKGNAME=		fleditor-${V}
REVISION =		8

SHARED_LIBS=		fleditor 3.0
CATEGORIES=		x11

HOMEPAGE=		http://www.robertk.com/source/

# LPGL
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

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
