# $OpenBSD: Makefile,v 1.10 2021/12/08 03:35:42 jsg Exp $

COMMENT =	reverse-engineered ports of Build games

DISTNAME =	nblood-1.01.20211205

GH_ACCOUNT =	nukeykt
GH_PROJECT =	NBlood
GH_COMMIT =	cc8d57ee5d6ac8a3c3f400501df25892cb9db6b1
CATEGORIES =	games x11

VC_BRANCH =	master
# git rev-list --count hash
VC_REV =	12723
# git rev-parse --short=9 hash
VC_HASH =	cc8d57ee5

MAINTAINER =	Jonathan Gray <jsg@openbsd.org>

# GPLv2, BUILD license and shareware data
PERMIT_PACKAGE =    "BUILD engine license is not compatible with GPLv2."
PERMIT_DISTFILES =  "BUILD engine license is not compatible with GPLv2."

BUILD_DEPENDS = archivers/unzip \
		graphics/gdk-pixbuf2

WANTLIB += c m pthread vpx
WANTLIB += SDL2 FLAC execinfo ${COMPILER_LIBCXX}

LIB_DEPENDS =	audio/flac \
		devel/sdl2 \
		multimedia/libvpx

# dlopen()'d; shows as Extra in check-lib-depends but it is used
LIB_DEPENDS +=	x11/gtk+2
WANTLIB +=	gtk-x11-2.0

COMPILER =	base-clang ports-gcc

# make sure we can see compilation output, respect CC/CXX, don't strip!
MAKE_FLAGS +=	PRETTY_OUTPUT=0 \
		CC="${CC}" \
		CXX="${CXX}" \
		STRIP=true \
		PACKAGE_REPOSITORY=1 \
		NOASM=1
MAKE_FILE =	GNUmakefile
USE_GMAKE =	Yes
NO_TEST =	Yes

# Fix "undefined reference to `__atomic_load_8'"
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=	atomic
MAKE_FLAGS +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

.include <bsd.port.arch.mk>

.if !${PROPERTIES:Mlld}
MAKE_FLAGS +=	LTO=0
.endif

post-extract:
	# check for data files in correct location
	@sed -i "s,/usr/share/games/eduke32,${TRUEPREFIX}/share/rednukem," \
		${WRKSRC}/source/rr/src/common.cpp
	@sed -i "s,/usr/share/games/nblood,${TRUEPREFIX}/share/nblood," \
		${WRKSRC}/source/blood/src/common.cpp

post-patch:
	echo "VC_BRANCH := ${VC_BRANCH}" > ${WRKSRC}/EDUKE32_REVISION.mak
	echo "VC_REV := ${VC_REV}" >> ${WRKSRC}/EDUKE32_REVISION.mak
	echo "VC_HASH := ${VC_HASH}" >> ${WRKSRC}/EDUKE32_REVISION.mak

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nblood ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/rednukem ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/pcexhumed ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/nblood
	${INSTALL_DATA_DIR} ${PREFIX}/share/rednukem
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nblood
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nblood
	${INSTALL_DATA} ${WRKDIST}/{AUTHORS,README}.md \
		${PREFIX}/share/doc/nblood/
	# eduke32/mapster32 licenses
	${INSTALL_DATA} ${WRKDIST}/package/common/gpl-2.0.txt \
		 ${PREFIX}/share/doc/nblood/
	${INSTALL_DATA} ${WRKDIST}/package/common/buildlic.txt \
		${PREFIX}/share/doc/nblood/
	# sample game mapping/modding data files
	${INSTALL_DATA} ${WRKDIST}/package/sdk/samples/* \
		${PREFIX}/share/examples/nblood/

.include <bsd.port.mk>
