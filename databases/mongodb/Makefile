# $OpenBSD: Makefile,v 1.19 2016/05/06 15:33:37 sthen Exp $

PORTROACH =	limitw:1,even

# The default storage engine (WiredTiger) only works on amd64.
ONLY_FOR_ARCHS = amd64
DPB_PROPERTIES = parallel

COMMENT =	scalable, high-performance document-oriented database

DISTNAME =	mongodb-src-r3.2.6
PKGNAME =	${DISTNAME:S/src-r//}
CATEGORIES =	databases

HOMEPAGE =	http://www.mongodb.org/

# mongodb itself: AGPLv3
# client/utils:   Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_chrono-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c execinfo
WANTLIB += kvm m pcap pcre pcrecpp pthread yaml-cpp z

MASTER_SITES =	http://downloads.mongodb.org/src/

MODULES =	gcc4 \
		devel/scons \
		lang/python

# XXX should come from scons module, but broken when gcc module also used:
NO_CCACHE =	Yes

MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
ALL_TARGET =	core tools
MODSCONS_ENV =	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS} -DBOOST_NO_USER_CONFIG" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include" \
		LIBPATH="${LOCALBASE}/lib"
MODSCONS_FLAGS += --prefix="${PREFIX}" \
		  --opt=on \
		  --allocator=system \
		  --use-system-boost \
		  --use-system-pcre \
		  --use-system-yaml \
		  --use-system-zlib \
		  -j${MAKE_JOBS}

ALL_TARGET =	core tools
LIB_DEPENDS =	devel/libexecinfo \
		devel/boost \
		devel/pcre \
		devel/yaml-cpp
TEST_DEPENDS =	textproc/py-yaml \
		databases/py-mongo

do-install:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mongodb
	${INSTALL_DATA} ${FILESDIR}/mongodb.conf \
	    ${PREFIX}/share/examples/mongodb

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} unittests
	cd ${WRKSRC} && ${MODPY_BIN} buildscripts/resmoke.py --suites=unittests

.include <bsd.port.mk>
