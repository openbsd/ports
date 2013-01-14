# $OpenBSD: Makefile,v 1.9 2013/01/14 10:47:45 brad Exp $

BROKEN =	broken after rthreads switch

#atomic_int.h: error "unsupported compiler or platform" on other archs
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =	scalable, high-performance document-oriented database

DISTNAME =	mongodb-src-r2.0.1
PKGNAME =	${DISTNAME:S/src-r//}
REVISION =	0

SHARED_LIBS =	mongoclient	1.0

CATEGORIES =	databases

HOMEPAGE =	http://www.mongodb.org/

# Apache 2.0 + AGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	boost_filesystem-mt boost_program_options-mt boost_system-mt \
		boost_thread-mt c execinfo mozjs m pcap pcre pcrecpp pthread \
		stdc++

MASTER_SITES =	http://downloads.mongodb.org/src/

MODULES =	devel/scons
MODSCONS_FLAGS = --prefix="${PREFIX}" \
		 --cpppath="${LOCALBASE}/include/nspr" \
		 --extralib="mozjs,pcrecpp" \
		 --usesm \
		 --sharedclient \
		 --full 

MAKE_ENV +=	HOME="${HOME}" \
		TERM="${TERM}" \
		CXXFLAGS="$(CXXFLAGS) -DXULRUNNER -I${LOCALBASE}/include/js" \
		LIBmongoclient_VERSION="${LIBmongoclient_VERSION}"
LIB_DEPENDS =	devel/boost \
		devel/libexecinfo \
		devel/pcre \
		lang/spidermonkey

pre-configure:
	rm -f ${WRKSRC}/third_party/{pcre,sm}.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mongodb
	${INSTALL_DATA} ${FILESDIR}/mongodb.conf \
	    ${PREFIX}/share/examples/mongodb

# Regression tests require at least 256 file descriptors and ~700MB
do-regress:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} test && \
	    ${WRKSRC}/test --dbpath ${WRKSRC}/unittest

.include <bsd.port.mk>
