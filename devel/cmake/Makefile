# $OpenBSD: Makefile,v 1.25 2010/08/23 18:17:30 jasper Exp $

VMEM_WARNING =	Yes

HOMEPAGE =	http://www.cmake.org/
CATEGORIES =	devel
COMMENT =	portable build system
DISTNAME =	cmake-2.8.2
REVISION =	0
MASTER_SITES =	${HOMEPAGE}files/v2.8/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto curl curses expat form m ssl stdc++ z

LIB_DEPENDS =		::net/curl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--datadir=/share/cmake \
			--docdir=/share/doc/cmake \
			--system-libs

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	simple

REGRESS_TARGET =	test

# XXX eats all memory
.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "mips64"
CFLAGS +=		-O0
.endif

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
	@rm -f ${WRKDIST}/Modules/Platform/*.orig

.include <bsd.port.mk>
