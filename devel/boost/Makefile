# $OpenBSD: Makefile,v 1.90 2019/09/19 07:38:14 otto Exp $

ONLY_FOR_ARCHS-md = aarch64 amd64 arm i386 powerpc

COMMENT-main=	free peer-reviewed portable C++ source libraries
COMMENT-md=	machine-dependent libraries for boost

# XXX if updating, try to remove -D_LIBCPP_ENABLE_CXX17_REMOVED_AUTO_PTR
# XXX in archivers/innoextract
VERSION=	1.66.0
DISTNAME=	boost_${VERSION:S/./_/g}
PKGNAME-main=	boost-${VERSION}
PKGNAME-md=	boost-md-${VERSION}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}
EXTRACT_SUFX=	.tar.bz2
FIX_EXTRACT_PERMISSIONS =	Yes

REVISION-main=	7
REVISION-md=	2

SO_VERSION=	9.0
BOOST_LIBS=	boost_atomic-mt \
		boost_chrono-mt boost_chrono \
		boost_container-mt boost_container \
		boost_date_time-mt boost_date_time \
		boost_filesystem-mt boost_filesystem \
		boost_graph-mt boost_graph \
		boost_iostreams-mt boost_iostreams \
		boost_locale-mt \
		boost_log-mt boost_log \
		boost_log_setup-mt boost_log_setup \
		boost_math_c99-mt boost_math_c99 \
		boost_math_c99f-mt boost_math_c99f \
		boost_math_c99l-mt boost_math_c99l \
		boost_math_tr1-mt boost_math_tr1 \
		boost_math_tr1f-mt boost_math_tr1f \
		boost_math_tr1l-mt boost_math_tr1l \
		boost_prg_exec_monitor-mt boost_prg_exec_monitor \
		boost_program_options-mt boost_program_options \
		boost_python-mt boost_python \
		boost_python3-mt boost_python3 \
		boost_numpy boost_numpy-mt \
		boost_random-mt boost_random \
		boost_regex-mt boost_regex \
		boost_serialization-mt boost_serialization \
		boost_signals-mt boost_signals \
		boost_system-mt boost_system \
		boost_thread-mt \
		boost_timer-mt boost_timer \
		boost_unit_test_framework-mt boost_unit_test_framework \
		boost_wserialization-mt boost_wserialization \
		boost_wave-mt \
		boost_type_erasure-mt boost_type_erasure

# MD
BOOST_LIBS+=	boost_context-mt \
		boost_coroutine boost_coroutine-mt \
		boost_fiber-mt \
		boost_stacktrace_basic \
		boost_stacktrace_basic-mt \
		boost_stacktrace_addr2line \
		boost_stacktrace_addr2line-mt \
		boost_stacktrace_noop \
		boost_stacktrace_noop-mt

.for _lib in ${BOOST_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.boost.org/

MAINTAINER=	Brad Smith <brad@comstyle.com> \
		Rafael Sadowski <rsadowski@openbsd.org>

# Boost
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} bz2 c icudata icui18n icuuc m z

COMPILER= base-clang ports-gcc

MULTI_PACKAGES=	-main -md

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS+=	lang/python/${MODPY_DEFAULT_VERSION_2} \
		lang/python/${MODPY_DEFAULT_VERSION_3} \
		math/py-numpy

LIB_DEPENDS=	archivers/bzip2 \
		textproc/icu4c

LIB_DEPENDS-md=	devel/boost
WANTLIB-md+=	boost_chrono-mt boost_filesystem-mt boost_system-mt
WANTLIB-md+=	boost_system boost_thread-mt

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
TOOLSET=	clang
.else
TOOLSET=	gcc
CXXFLAGS+=	-std=gnu++11
.endif

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

BJAM_CONFIG=	-sICU_PATH=${LOCALBASE} \
		-sBZIP2_INCLUDE=${LOCALBASE}/include \
		-sBZIP2_LIBPATH=${LOCALBASE}/lib \
		-q \
		-d+2 \
		-j${MAKE_JOBS} \
		--layout=tagged \
		pch=off \
		cflags='${CFLAGS} -pthread' \
		cxxflags='${CXXFLAGS} -pthread' \
		variant=release \
		link=static,shared \
		threading=single,multi \

BOOTSTRAP=	--with-bjam=${WRKSRC}/bjam \
		--with-toolset=${TOOLSET} \
		--with-python-root=${LOCALBASE}

# 'context' and 'coroutine' use MD bits and miss support for Alpha,
# PA-RISC, SPARC and SuperH. The author does not care
# about adding support for Alpha and PA-RISC.
.if !${BUILD_PACKAGES:M-md}
BOOTSTRAP+=	--without-libraries=context,coroutine,fiber,stacktrace
.endif

PY2_BOOTSTRAP=	--with-python=${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_2} \
		--with-python-version=${MODPY_DEFAULT_VERSION_2} \

PY3_BOOTSTRAP=	--with-python=${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3} \
		--with-python-version=${MODPY_DEFAULT_VERSION_3} \

# python.port.mk makes assumptions about an empty CONFIGURE_STYLE
CONFIGURE_STYLE= none

CONFIGURE_ENV=	BJAM_CONFIG="${BJAM_CONFIG}" \
		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

DPB_PROPERTIES= parallel

NO_TEST=	Yes

SUBST_VARS+=	SO_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tools/build/src/engine/Jambase

do-configure:
	echo "using ${TOOLSET} : : ${CXX} ;" >>${WRKSRC}/tools/build/user-config.jam
	@${SUBST_CMD} ${WRKSRC}/Jamroot
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure
	@cd ${WRKSRC}/tools/build/src/engine && \
		${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" /bin/sh ./build.sh cc && \
		cp bin.openbsd*/b2 bin.openbsd*/bjam ${WRKSRC}
	@cd ${WRKSRC} && chmod -R a+x ./ && \
	    /bin/sh ./bootstrap.sh ${BOOTSTRAP}

# b2 doesn't seem to respect python parameter, we need to run twice with
# separate python environments
do-build:
	export ${MAKE_ENV}; \
	cd ${WRKSRC} && chmod -R a+x ./ && \
	/bin/sh ./bootstrap.sh ${BOOTSTRAP} ${PY2_BOOTSTRAP} && \
	./b2 ${BJAM_CONFIG} python=${MODPY_DEFAULT_VERSION_2} && \
	/bin/sh ./bootstrap.sh ${BOOTSTRAP} ${PY3_BOOTSTRAP} && \
	./b2 ${BJAM_CONFIG} python=${MODPY_DEFAULT_VERSION_3}\

do-install:
	# Libs and includes:
	${INSTALL_DATA} ${WRKSRC}/stage/lib/lib!(*.so) ${PREFIX}/lib
	@cd ${WRKSRC} && \
		find boost -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \;
	@cd ${WRKSRC} && \
		find boost ! -name \*.orig -type f -exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;
	# boost-build:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/build/src/engine/bin.*/{b2,bjam} \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/boost-build
	@cd ${WRKSRC}/tools/build/src && \
		pax -r -w -p pm -s ':^./engine.*$$::' \
		-s ':^.*\.orig$$::' . ${PREFIX}/share/boost-build
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/boost-build
	${INSTALL_DATA} ${WRKSRC}/tools/build/example/site-config.jam \
		${PREFIX}/share/examples/boost-build
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/boost-build/

.include <bsd.port.mk>
