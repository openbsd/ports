# $OpenBSD: Makefile,v 1.2 2011/07/18 19:56:18 fgsch Exp $

COMMENT =	scalable, high-performance document-oriented database

DISTNAME =	mongodb-src-r1.8.2
PKGNAME =	${DISTNAME:S/src-r//}

SHARED_LIBS =	mongoclient	0.0

CATEGORIES =	databases

HOMEPAGE =	http://www.mongodb.org/

# Apache 2.0 + AGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	boost_filesystem-mt boost_program_options-mt boost_system-mt \
		boost_thread-mt c execinfo mozjs m pcap pcre pcrecpp pthread \
		readline stdc++ termcap

MASTER_SITES =	http://downloads.mongodb.org/src/

MODULES =	devel/scons
MODSCONS_FLAGS = --prefix="${PREFIX}" \
		 --cpppath="${LOCALBASE}/include/nspr" \
		 --usesm \
		 --sharedclient \
		 --full 

MAKE_ENV +=	HOME="${HOME}" \
		TERM="${TERM}" \
		CXXFLAGS="$(CXXFLAGS) -DXULRUNNER" \
		LIBmongoclient_VERSION="${LIBmongoclient_VERSION}"
LIB_DEPENDS =	devel/boost \
		devel/libexecinfo \
		devel/pcre \
		lang/spidermonkey

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
