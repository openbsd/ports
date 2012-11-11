# $OpenBSD: Makefile,v 1.66 2012/11/11 17:13:31 dcoppa Exp $

VMEM_WARNING =	Yes
BROKEN-arm =	build fails since move to gcc4

HOMEPAGE =	http://www.cmake.org/
CATEGORIES =	devel
COMMENT =	portable build system
DISTNAME =	cmake-2.8.10
MASTER_SITES =	${HOMEPAGE}files/v2.8/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		archive c curl curses expat form m \
			stdc++ z

LIB_DEPENDS =		archivers/libarchive \
			net/curl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--datadir=/share/cmake \
			--docdir=/share/doc/cmake \
			--system-libs

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes
USE_GROFF =		Yes

REGRESS_TARGET =	test

MAKE_FLAGS +=		VERBOSE=1

pre-configure:
	@cp ${FILESDIR}/*.cmake ${WRKSRC}/Modules/
	${SUBST_CMD} ${WRKSRC}/Modules/CMakeDetermineJavaCompiler.cmake \
		${WRKSRC}/Modules/FindJNI.cmake \
		${WRKSRC}/Modules/FindJava.cmake \
		${WRKSRC}/Modules/FindLuaLibs.cmake \
		${WRKSRC}/Modules/FindMPEG.cmake \
		${WRKSRC}/Modules/FindMPEG2.cmake \
		${WRKSRC}/Modules/FindQt.cmake \
		${WRKSRC}/Modules/FindQt3.cmake \
		${WRKSRC}/Modules/FindSDL.cmake \
		${WRKSRC}/Modules/FindTCL.cmake \
		${WRKSRC}/Modules/FindwxWindows.cmake \
		${WRKSRC}/Modules/UseJava.cmake

post-install:
	@rm ${WRKINST}/${LOCALBASE}/share/cmake/Modules/*.{beforesubst,orig}
	@rm ${WRKINST}/${LOCALBASE}/share/cmake/Modules/Compiler/*.orig
	@rm ${WRKINST}/${LOCALBASE}/share/cmake/Modules/Platform/*.orig

.include <bsd.port.mk>
