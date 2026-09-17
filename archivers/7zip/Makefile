COMMENT-main =		file archiver with a high compression ratio
COMMENT-rar =		RAR decompression for 7-Zip

V =			26.03
DISTNAME =		7z${V:S/.//}-src
PKGNAME =		7zip-${V}
DISTFILES =		${DISTNAME}.tar.xz \
			7z${V:S/.//}-linux-arm.tar.xz

CATEGORIES =		archivers

HOMEPAGE =		https://7-zip.org

MAINTAINER =		George Koehler <gkoehler@openbsd.org>

# LGPLv2.1 with unRAR license restriction
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

SITES =			https://github.com/ip7z/7zip/releases/download/${V}/
EXTRACT_CASES = *-linux-arm.tar.xz) \
	xz -d <${FULLDISTDIR}/$$archive | ${TAR} -xf - MANUAL;;

FIX_CRLF_FILES =	CPP/7zip/7zip_gcc.mak \
			CPP/7zip/Bundles/SFXCon/SfxCon.cpp \
			CPP/7zip/Compress/DllExportsCompress.cpp \
			CPP/7zip/UI/Common/ArchiveCommandLine.cpp \
			CPP/7zip/UI/Console/Main.cpp \
			CPP/7zip/UI/Console/UserInputUtils.cpp \
			CPP/Windows/System.cpp

COMPILER =		base-clang ports-gcc

RUN_DEPENDS-rar =	${BUILD_PKGPATH}

MULTI_PACKAGES =	-main -rar

USE_GMAKE =		Yes

MAKE_FILE_base-clang = 	../../cmpl_clang.mak
MAKE_FILE_ports-gcc =	../../cmpl_gcc.mak
MAKE_FILE =		${MAKE_FILE_${CHOSEN_COMPILER}}
MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" \
			LOCAL_CFLAGS="${CFLAGS}" \
			LOCAL_CXXFLAGS="${CXXFLAGS}"

WRKDIST =		${WRKDIR}
WRKSRC =		${WRKDIST}/CPP/7zip

post-patch:
	install -D ${FILESDIR}/CodecRar_makefile.gcc \
		${WRKSRC}/Bundles/CodecRar/makefile.gcc

M =	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE}

do-build:
	${M} -C ${WRKSRC}/UI/Console
	${M} -C ${WRKSRC}/Bundles/Alone
	${M} -C ${WRKSRC}/Bundles/Alone7z
	${M} -C ${WRKSRC}/Bundles/Format7zF DISABLE_RAR_COMPRESS=1
	${M} -C ${WRKSRC}/Bundles/CodecRar
	${M} -C ${WRKSRC}/Bundles/SFXCon

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/UI/Console/b/*/7z \
		${WRKSRC}/Bundles/Alone/b/*/7za \
		${WRKSRC}/Bundles/Alone7z/b/*/7zr ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/7zip
	${INSTALL_DATA_DIR} ${PREFIX}/lib/7zip/Codecs
	${INSTALL_DATA} ${WRKSRC}/Bundles/Format7zF/b/*/7z.so \
		${PREFIX}/lib/7zip/7z.so
	${INSTALL_PROGRAM} ${WRKSRC}/Bundles/SFXCon/b/*/7zCon \
		${PREFIX}/lib/7zip/7zCon.sfx
	${INSTALL_DATA} ${WRKSRC}/Bundles/CodecRar/b/*/Rar.so \
		${PREFIX}/lib/7zip/Codecs/Rar.so
	${SUBST_CMD} -cm 644 ${FILESDIR}/7z.1 ${PREFIX}/man/man1/7z.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/7zip
	${INSTALL_DATA} ${WRKDIST}/DOC/*.txt ${PREFIX}/share/doc/7zip/
	cp -R ${WRKDIST}/MANUAL ${PREFIX}/share/doc/7zip/

.include <bsd.port.mk>
