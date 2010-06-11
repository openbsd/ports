# $OpenBSD: Makefile,v 1.22 2010/06/11 08:07:17 dcoppa Exp $

HOMEPAGE =	http://www.cmake.org/
CATEGORIES =	devel
COMMENT =	portable build system
DISTNAME =	cmake-2.8.1
PKGNAME =	${DISTNAME}p0
MASTER_SITES =	${HOMEPAGE}files/v2.8/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curses expat form m stdc++ z

LIB_DEPENDS =		curl::net/curl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--datadir=/share/cmake \
			--docdir=/share/doc/cmake \
			--system-libs
SEPARATE_BUILD =	simple

REGRESS_TARGET =	test

.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "sparc64"
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
		${WRKSRC}/Modules/FindwxWindows.cmake \
		${WRKSRC}/Modules/Platform/UnixPaths.cmake

# Remove spurious post-build files
post-install:
	@rm -f ${WRKDIST}/Modules/*.{beforesubst,orig}
	@rm -f ${WRKDIST}/Modules/Platform/*.beforesubst
	@rm -f ${WRKDIST}/Modules/Platform/*.orig

# For the registry test to work
pre-regress:
	mkdir -p ${WRKDIR}/registryhome
	REGRESS_FLAGS=HOME=${WRKDIR}/registryhome

.include <bsd.port.mk>
