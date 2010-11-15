# $OpenBSD: Makefile,v 1.33 2010/11/15 19:45:57 espie Exp $

VMEM_WARNING =	Yes

HOMEPAGE =	http://www.cmake.org/
CATEGORIES =	devel
COMMENT =	portable build system
DISTNAME =	cmake-2.8.3
MASTER_SITES =	${HOMEPAGE}files/v2.8/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		archive c crypto curl curses expat form m \
			ssl stdc++ z

LIB_DEPENDS =		archivers/libarchive \
			net/curl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--datadir=/share/cmake \
			--docdir=/share/doc/cmake \
			--system-libs

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	simple
USE_GROFF =		Yes

REGRESS_TARGET =	test

# XXX eats all memory
.if ${MACHINE_ARCH} == "arm"
CFLAGS +=		-O0
.endif

MAKE_FLAGS +=		VERBOSE=1

pre-configure:
	@cp ${FILESDIR}/*.cmake ${WRKSRC}/Modules/
	${SUBST_CMD} ${WRKSRC}/Modules/FindLibIntl.cmake \
		${WRKSRC}/Modules/FindMPEG.cmake \
		${WRKSRC}/Modules/FindMPEG2.cmake \
		${WRKSRC}/Modules/FindQt.cmake \
		${WRKSRC}/Modules/FindQt3.cmake \
		${WRKSRC}/Modules/FindSDL.cmake \
		${WRKSRC}/Modules/FindwxWindows.cmake

# Remove spurious post-build files
post-install:
	@rm -f ${WRKDIST}/Modules/*.{beforesubst,orig}
	@rm -f ${WRKDIST}/Modules/Compiler/*.orig
	@rm -f ${WRKDIST}/Modules/Platform/*.orig

.include <bsd.port.mk>
