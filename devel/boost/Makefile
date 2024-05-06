NOT_FOR_ARCHS-md = alpha hppa

DPB_PROPERTIES=	parallel

COMMENT-main=	free peer-reviewed portable C++ source libraries
COMMENT-md=	machine-dependent libraries for boost

VERSION=	1.84.0
DISTNAME=	boost_${VERSION:S/./_/g}
PKGNAME=	boost-${VERSION}
REVISION=	3
EPOCH=		0
CATEGORIES=	devel
SITES=		https://boostorg.jfrog.io/artifactory/main/release/${VERSION}/source/
EXTRACT_SUFX=	.tar.bz2

SO_VERSION=	23.0
BOOST_LIBS=	boost_atomic-mt \
		boost_chrono-mt boost_chrono \
		boost_container-mt boost_container \
		boost_contract-mt boost_contract \
		boost_date_time-mt boost_date_time \
		boost_filesystem-mt boost_filesystem \
		boost_graph-mt boost_graph \
		boost_iostreams-mt boost_iostreams \
		boost_json-mt boost_json \
		boost_locale-mt \
		boost_log-mt boost_log \
		boost_log_setup-mt boost_log_setup \
		boost_math_c99-mt boost_math_c99 \
		boost_math_c99f-mt boost_math_c99f \
		boost_math_c99l-mt boost_math_c99l \
		boost_math_tr1-mt boost_math_tr1 \
		boost_math_tr1f-mt boost_math_tr1f \
		boost_math_tr1l-mt boost_math_tr1l \
		boost_nowide-mt boost_nowide \
		boost_numpy311-mt boost_numpy311 \
		boost_prg_exec_monitor-mt boost_prg_exec_monitor \
		boost_program_options-mt boost_program_options \
		boost_python311-mt boost_python311 \
		boost_random-mt boost_random \
		boost_regex-mt boost_regex \
		boost_serialization-mt boost_serialization \
		boost_stacktrace_addr2line-mt boost_stacktrace_addr2line \
		boost_stacktrace_basic-mt boost_stacktrace_basic \
		boost_stacktrace_noop-mt boost_stacktrace_noop \
		boost_system-mt boost_system \
		boost_thread-mt \
		boost_timer-mt boost_timer \
		boost_type_erasure-mt boost_type_erasure \
		boost_unit_test_framework-mt boost_unit_test_framework \
		boost_url-mt boost_url \
		boost_wserialization-mt boost_wserialization \
		boost_wave-mt boost_wave

# MD
BOOST_LIBS+=	boost_context-mt \
		boost_coroutine-mt boost_coroutine \
		boost_fiber-mt

.for _lib in ${BOOST_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	https://www.boost.org/

MAINTAINER=	Brad Smith <brad@comstyle.com> \
		Rafael Sadowski <rsadowski@openbsd.org>

# Boost
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} bz2 c icudata icui18n icuuc m z
WANTLIB-md=	${COMPILER_LIBCXX} boost_filesystem-mt m

COMPILER=	base-clang ports-gcc

MULTI_PACKAGES=	-main -md

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS=	archivers/bzip2 \
		textproc/icu4c

LIB_DEPENDS-md=	devel/boost

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
TOOLSET=	clang
.else
TOOLSET=	gcc
.endif

BJAM_CONFIG=	-sICU_PATH=${LOCALBASE} \
		-sBZIP2_INCLUDE=${LOCALBASE}/include \
		-sBZIP2_LIBPATH=${LOCALBASE}/lib \
		-q \
		-d+2 \
		-j${MAKE_JOBS} \
		--layout=tagged-1.66 \
		pch=off \
		cflags='${CFLAGS}' \
		cxxflags='${CXXFLAGS}' \
		variant=release \
		link=static,shared \
		threading=single,multi \
		toolset=${TOOLSET}

BOOTSTRAP=	--with-bjam=${WRKSRC}/b2 \
		--with-toolset=${TOOLSET} \
		--with-python=${MODPY_BIN}
.if !${BUILD_PACKAGES:M-md}
BOOTSTRAP+=	--without-libraries=context,coroutine,fiber
.endif

# python.port.mk makes assumptions about an empty CONFIGURE_STYLE
CONFIGURE_STYLE= none

CONFIGURE_ENV=	BJAM_CONFIG="${BJAM_CONFIG}" \
		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_TEST=	Yes

SUBST_VARS+=	SO_VERSION

# Revert back to Boost::Context 1.80.0 ASM code for i386
# and add new support for sparc64
post-extract:
	cp -f ${FILESDIR}/*_sysv_elf_gas.S ${WRKSRC}/libs/context/src/asm/

do-configure:
	echo "using ${TOOLSET} : : ${CXX} ;" >>${WRKSRC}/tools/build/src/user-config.jam
	${SUBST_CMD} ${WRKSRC}/Jamroot
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure
	@cd ${WRKSRC}/tools/build/src/engine && ${SETENV} ${CONFIGURE_ENV} \
		/bin/sh ./build.sh ${TOOLSET} && cp b2 ${WRKSRC}
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} /bin/sh ./bootstrap.sh ${BOOTSTRAP}

do-build:
	@cd ${WRKSRC} && export ${MAKE_ENV} && ./b2 ${BJAM_CONFIG}

do-install:
	# Libs and includes:
	${INSTALL_DATA_DIR} ${PREFIX}/include/boost
	${INSTALL_DATA} ${WRKSRC}/stage/lib/lib!(*.so) ${PREFIX}/lib
	cd ${WRKSRC}/boost && \
		pax -rw -s ':^.*${PATCHORIG}$$::' . ${PREFIX}/include/boost
	find ${PREFIX}/include/boost -type d -exec chmod ${DIRMODE} {} +
	find ${PREFIX}/include/boost -type f -exec chmod ${SHAREMODE} {} +
	# boost-build:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/build/src/engine/b2 \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/b2
	@cd ${WRKSRC}/tools/build/src && \
		pax -r -w -p pm -s ':^./engine.*$$::' -s ':^.*${PATCHORIG}$$::' . \
		${PREFIX}/share/b2
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/b2
	@cd ${WRKSRC}/tools/build/example && \
		pax -r -w -p pm -s ':^.*${PATCHORIG}$$::' . \
		${PREFIX}/share/examples/b2

.include <bsd.port.mk>
