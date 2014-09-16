# $OpenBSD: Makefile,v 1.15 2014/09/16 17:28:07 jasper Exp $

#atomic_int.h: error "unsupported compiler or platform" on other archs
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =	scalable, high-performance document-oriented database

DISTNAME =	mongodb-src-r2.6.4
PKGNAME =	${DISTNAME:S/src-r//}

CATEGORIES =	databases

HOMEPAGE =	http://www.mongodb.org/

# Apache 2.0 + AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	boost_filesystem-mt boost_program_options-mt boost_system-mt \
		boost_thread-mt c execinfo m pcap pcre pcrecpp pthread \
		stdc++ v8

MASTER_SITES =	http://downloads.mongodb.org/src/

MODULES =	devel/scons
MODSCONS_FLAGS = --prefix="${PREFIX}" \
		 --cpppath="${LOCALBASE}/include/nspr" \
		 --extralib="pcrecpp" \
		 --usev8 \
		 --sharedclient \
		 --full \
		 --use-system-pcre \
		 --use-system-boost \
		 --use-system-v8

MAKE_ENV +=	HOME="${HOME}" \
		TERM="${TERM}" \
		CXXFLAGS="$(CXXFLAGS)" \
		LIBmongoclient_VERSION="${LIBmongoclient_VERSION}"
LIB_DEPENDS =	devel/boost \
		devel/libexecinfo \
		devel/pcre \
		lang/libv8

pre-configure:
	rm -f ${WRKSRC}/third_party/{pcre,sm}.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mongodb
	${INSTALL_DATA} ${FILESDIR}/mongodb.conf \
	    ${PREFIX}/share/examples/mongodb

# Regression tests require at least 256 file descriptors and ~700MB
do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} test && \
	    ${WRKSRC}/test --dbpath ${WRKSRC}/unittest

.include <bsd.port.mk>
