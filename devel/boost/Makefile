# $OpenBSD: Makefile,v 1.18 2009/07/27 00:34:24 kurt Exp $

COMMENT=	free peer-reviewed portable C++ source libraries

PKGNAME=	boost-${VERSION}p4

VERSION=	1.34.1
DISTNAME=	boost_${VERSION:S/./_/g}

SO_VERSION=	1.0
BOOST_LIBS=	boost_date_time boost_date_time-mt \
		boost_filesystem boost_filesystem-mt \
		boost_graph boost_graph-mt \
		boost_iostreams boost_iostreams-mt \
		boost_prg_exec_monitor boost_prg_exec_monitor-mt \
		boost_program_options boost_program_options-mt \
		boost_python boost_python-mt \
		boost_regex boost_regex-mt \
		boost_serialization boost_serialization-mt \
		boost_signals boost_signals-mt \
		boost_thread-mt \
		boost_unit_test_framework boost_unit_test_framework-mt \
		boost_wave boost_wave-mt
.for _lib in ${BOOST_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	devel

HOMEPAGE=	http://www.boost.org/

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"
CONFIGURE_ENV=	BJAM_CONFIG="-sNO_BZIP2=1 -sSO_VERSION=${SO_VERSION}"

REGRESS_TARGET=	check

WANTLIB=	z c

MODULES=	lang/python
MODPY_RUNDEP=	No

# python.port.mk makes assumptions about an empty CONFIGURE_STYLE
CONFIGURE_STYLE=none

do-configure:
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
		cp user.hpp ${WRKSRC}/boost/config

post-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure \
	    --with-python=${MODPY_BIN} \
	    --with-python-root=${LOCALBASE} \
	    --with-python-version=${MODPY_VERSION} \
	    --without-icu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/jam/src/bin.*/bjam \
		${PREFIX}/bin

	${INSTALL_DATA} ${WRKSRC}/stage/lib/lib!(*.so) ${PREFIX}/lib

	@cd ${WRKSRC} && \
		find boost -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \;
	@cd ${WRKSRC} && \
		find boost ! -name \*.orig -type f -exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;

.include <bsd.port.mk>
