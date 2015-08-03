# $OpenBSD: Makefile,v 1.56 2015/08/03 18:29:30 jca Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	free peer-reviewed portable C++ source libraries

VERSION=	1.58.0
REVISION=	0
DISTNAME=	boost_${VERSION:S/./_/g}
PKGNAME=	boost-${VERSION}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}
EXTRACT_SUFX=	.tar.bz2

SO_VERSION=	6.0
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
		boost_random-mt boost_random \
		boost_regex-mt boost_regex \
		boost_serialization-mt boost_serialization \
		boost_signals-mt boost_signals \
		boost_system-mt boost_system \
		boost_thread-mt \
		boost_timer-mt boost_timer \
		boost_unit_test_framework-mt boost_unit_test_framework \
		boost_wave-mt boost_wave \
		boost_wserialization-mt boost_wserialization

.for _lib in ${BOOST_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.boost.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c bz2 m pthread stdc++ util z

MODULES=	converters/libiconv \
		lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS+=	lang/python/${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS=	archivers/bzip2

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

BJAM_CONFIG=	-sICONV_PATH=${LOCALBASE} \
		-sBZIP2_INCLUDE=${LOCALBASE}/include \
		-sBZIP2_LIBPATH=${LOCALBASE}/lib \
		-d+2 -q \
		-j ${MAKE_JOBS} \
		cflags='${CFLAGS} -pthread' cxxflags='${CXXFLAGS} -pthread' \
		python=${MODPY_VERSION} \
		variant=release link=static,shared threading=single,multi \
		--layout=tagged \
		--user-config=${WRKSRC}/tools/build/user-config.jam

# 'context' and 'coroutine' use MD bits and miss support for Alpha,
# PA-RISC, SPARC and SuperH. The author does not care
# care about adding support for Alpha and PA-RISC.
BOOTSTRAP=	--with-python=${MODPY_BIN} \
		--with-python-root=${LOCALBASE} \
		--with-python-version=${MODPY_VERSION} \
		--without-icu \
		--without-libraries=context,coroutine

# python.port.mk makes assumptions about an empty CONFIGURE_STYLE
CONFIGURE_STYLE= none
CONFIGURE_ENV=	BJAM_CONFIG="${BJAM_CONFIG}"

DPB_PROPERTIES= parallel

NO_TEST=	Yes

SUBST_VARS+=	SO_VERSION

do-configure:
	echo "using python : ${MODPY_DEFAULT_VERSION_3} : ${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3} : ${LOCALBASE}/include/python${MODPY_DEFAULT_VERSION_3}$$(python${MODPY_DEFAULT_VERSION_3}-config --abiflags) ;" >> ${WRKSRC}/tools/build/user-config.jam
	@${SUBST_CMD} ${WRKSRC}/Jamroot
	@cd ${WRKSRC}/libs/config && \
	    ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
	    cp user.hpp ${WRKSRC}/boost/config
	@cd ${WRKSRC} && chmod -R a+x ./ && \
	    /bin/sh ./bootstrap.sh ${BOOTSTRAP}

do-build:
	@cd ${WRKSRC} && \
	    ./b2 ${BJAM_CONFIG}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/build/src/engine/bin.*/{b2,bjam} \
	    ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/stage/lib/lib!(*.so) ${PREFIX}/lib
	@cd ${WRKSRC} && \
	    find boost -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \;
	@cd ${WRKSRC} && \
	    find boost ! -name \*.orig -type f -exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;

.include <bsd.port.mk>
