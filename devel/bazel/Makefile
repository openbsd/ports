# ./src/tools/singlejar/mapped_file_posix.inc only supports 64-bit UNIX.
ONLY_FOR_ARCHS =	${LP64_ARCHS}

VERSION =		6.3.2
REVISION =		1

COMMENT =		polyglot build tool
HOMEPAGE =		https://bazel.build/

DISTNAME =		bazel-${VERSION}
EXTRACT_SUFX =		-dist.zip
EXTRACT_CASES =		*.zip) ${UNZIP} -Laq ${FULLDISTDIR}/$$archive -d ${WRKSRC};;

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m
COMPILER_LANGS =	c++
COMPILER =		base-clang ports-gcc

SITES =			https://github.com/bazelbuild/bazel/releases/download/${VERSION}/

ABSEIL_VER =		20230802.1
DIST_TUPLE =		github abseil abseil-cpp ${ABSEIL_VER} .

MODULES =		java lang/python
MODJAVA_VER =		11

BUILD_DEPENDS =		archivers/zip \
			shells/bash

EXTRACT_ONLY =		${DISTFILES}

# Disable stripping. The `bazel` binary contains an embedded zip file;
# stripping the binary removes this zip file, breaking the binary.
INSTALL_STRIP =

MAKE_ENV =		VERBOSE=yes

# The bundled version of abseil is from 2021 and isn't compatible with clang-16.
# It also needs some patches we copy from devel/abseil.
post-patch:
	cp ${FULLDISTDIR}/abseil-abseil-cpp-${ABSEIL_VER}.tar.gz \
		${WRKSRC}/derived/distdir/${ABSEIL_VER}.tar.gz
	mkdir ${WRKSRC}/third_party/abseil
	cp ${FILESDIR}/patch-absl* ${WRKSRC}/third_party/abseil

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		EMBED_LABEL="${VERSION}" \
		EXTRA_BAZEL_ARGS="--tool_java_runtime_version=local_jdk_${MODJAVA_VER}" \
		BAZEL_WRKDIR=${WRKDIR}/tmp \
		PATH="${LOCALBASE}/bin:${PATH}" \
		JAVA_HOME=${JAVA_HOME} \
		SOURCE_DATE_EPOCH="0" \
		${LOCALBASE}/bin/bash ./compile.sh
	chmod -R u+w ${WRKDIR}/tmp

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/output/bazel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bazel/
	${INSTALL_DATA} ${WRKSRC}/scripts/packages/bazel.bazelrc \
		${PREFIX}/share/examples/bazel/bazel.bazelrc

.include <bsd.port.mk>
