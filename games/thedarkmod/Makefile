# $OpenBSD: Makefile,v 1.2 2019/09/03 16:56:43 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386
BROKEN-i386 =	Simd_SSE.cpp fails, unknown type name '__m128'

COMMENT =	first-person stealth game inspired by Thief

V =		2.07
DISTNAME =	thedarkmod.${V}
PKGNAME =	thedarkmod-${V}

CATEGORIES =	games x11
HOMEPAGE =	http://www.thedarkmod.com
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3/revised BSD (engine), CC-BY-NC-SA 3.0 (data)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL IL X11 Xau Xdmcp Xext Xxf86vm
WANTLIB += avcodec avformat avutil boost_filesystem boost_program_options
WANTLIB += boost_system c curl jpeg m openal swresample swscale
WANTLIB += vorbisfile xcb z

MASTER_SITES =		http://www.thedarkmod.com/sources/
DISTFILES =		${DISTNAME}.src.7z
EXTRACT_CASES =	*.7z) ${LOCALBASE}/bin/7z x -o${WRKSRC} ${DISTDIR}/$$archive > \
			/dev/null;;

# C++11
COMPILER =	base-clang ports-gcc

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc =	-lstdc++fs
LDFLAGS +=		${EXTRA_${CHOSEN_COMPILER}}

MODULES =		devel/scons
BUILD_DEPENDS =		archivers/p7zip
LIB_DEPENDS =		audio/openal \
			devel/boost \
			graphics/DevIL \
			graphics/ffmpeg \
			net/curl

LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib

# "CC=c++" works around some sloppiness from upstream,
# but is deprecated for C code
MODSCONS_FLAGS +=	BUILD="release" \
			CC="c++" \
			BASECPPFLAGS="${CXXFLAGS}" \
			CPPPATH="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LINKFLAGS="${LDFLAGS}" \
			NOCURL=1 \
			LIBC_MALLOC=1

.if ${MACHINE_ARCH} == "amd64"
MODSCONS_FLAGS +=	TARGET_ARCH="x64"
.elif ${MACHINE_ARCH} == "i386"
MODSCONS_FLAGS +=	TARGET_ARCH="i386"
.endif


# remove bundled boost to make sure it's not picked up
post-extract:
	rm -rf ${WRKSRC}/include/boost

do-gen:
	${SUBST_CMD} ${WRKSRC}/SConstruct
	${SUBST_CMD} ${WRKSRC}/tdm_update/SConstruct

do-build:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC}/tdm_update \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/thedarkmod
	${INSTALL_PROGRAM} ${WRKBUILD}/thedarkmod ${PREFIX}/share/thedarkmod/
	${INSTALL_PROGRAM} ${WRKBUILD}/tdm_update/tdm_update \
		${PREFIX}/share/thedarkmod/
	${INSTALL_DATA} ${FILESDIR}/Darkmod.cfg ${PREFIX}/share/thedarkmod/

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/thedarkmod.sh ${PREFIX}/bin/thedarkmod
	${SUBST_CMD} -c -m 755 ${FILESDIR}/tdm_update.sh ${PREFIX}/bin/tdm_update

.include <bsd.port.mk>
