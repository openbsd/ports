# $OpenBSD: Makefile,v 1.35 2012/01/06 07:39:55 ajacoutot Exp $

COMMENT=	free peer-reviewed portable C++ source libraries

PKGNAME=	boost-${VERSION}
REVISION=	12

VERSION=	1.42.0
DISTNAME=	boost_${VERSION:S/./_/g}

SO_VERSION=	4.0
BOOST_LIBS=	boost_date_time boost_date_time-mt \
		boost_filesystem boost_filesystem-mt \
		boost_graph boost_graph-mt \
		boost_iostreams boost_iostreams-mt \
		boost_math_c99 boost_math_c99-mt \
		boost_math_c99f boost_math_c99f-mt \
		boost_math_c99l boost_math_c99l-mt \
		boost_math_tr1 boost_math_tr1-mt \
		boost_math_tr1f boost_math_tr1f-mt \
		boost_math_tr1l boost_math_tr1l-mt \
		boost_prg_exec_monitor-mt boost_prg_exec_monitor \
		boost_program_options boost_program_options-mt \
		boost_python boost_python-mt \
		boost_regex boost_regex-mt \
		boost_serialization boost_serialization-mt \
		boost_signals boost_signals-mt \
		boost_system boost_system-mt \
		boost_thread-mt \
		boost_unit_test_framework boost_unit_test_framework-mt \
		boost_wave boost_wave-mt \
		boost_wserialization boost_wserialization-mt
.for _lib in ${BOOST_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	devel

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://www.boost.org/

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

BJAM_CONFIG=	-sNO_BZIP2=1 \
		-d+2 -q \
		-j ${MAKE_JOBS} \
		cflags='${CFLAGS}' cxxflags='${CXXFLAGS}' \
		variant=release link=static,shared threading=single,multi 

BOOTSTRAP_CONFIG=	--without-icu \
			--with-python=${MODPY_BIN} \
			--with-python-root=${LOCALBASE} \
			--with-python-version=${MODPY_VERSION} \
#			--without-libraries=test,thread,serialization,system,date_time,filesystem,graph,math,mpi,program_options,signals,wave

CONFIGURE_ENV=	BJAM_CONFIG="${BJAM_CONFIG}"

NO_REGRESS=	Yes

WANTLIB=	c m pthread stdc++ util z

MODULES=	lang/python
MODPY_RUNDEP=	No

# python.port.mk makes assumptions about an empty CONFIGURE_STYLE
CONFIGURE_STYLE=none

SUBST_VARS+=	SO_VERSION
pre-configure:
	${SUBST_CMD} ${WRKSRC}/Jamroot

do-configure:
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
		cp user.hpp ${WRKSRC}/boost/config

post-configure:
	@cd ${WRKSRC} && chmod -R a+x ./ && \
	/bin/sh ./bootstrap.sh ${BOOTSTRAP_CONFIG}

do-build:
	@cd ${WRKSRC} && \
		./bjam ${BJAM_CONFIG}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/jam/src/bin.*/bjam \
		${PREFIX}/bin

	${INSTALL_DATA} ${WRKSRC}/stage/lib/lib!(*.so) ${PREFIX}/lib

	@cd ${WRKSRC} && \
		find boost -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \;
	@cd ${WRKSRC} && \
		find boost ! -name \*.orig -type f -exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;

.include <bsd.port.mk>
