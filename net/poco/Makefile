# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:43 sthen Exp $

COMMENT =	POCO C++ libraries for network based applications

VERSION =	1.4.6p1
DISTNAME =	poco-${VERSION}-all
PKGNAME =	poco-${VERSION:S/p/pl/}
REVISION =	4
CATEGORIES =	net devel
SHLIB_VERSION =	1.0

.for _lib in PocoDataMySQL PocoNetSSL PocoDataODBC PocoDataSQLite PocoZip \
	PocoCrypto PocoData PocoFoundation PocoNet PocoUtil PocoXML
SHARED_LIBS +=	${_lib} ${SHLIB_VERSION}
.endfor

HOMEPAGE =	http://pocoproject.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=poco/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Boost software license
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m pthread ssl ${COMPILER_LIBCXX} iodbc iodbcinst mysqlclient
WANTLIB += expat pcre sqlite3 z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	databases/iodbc \
		databases/mariadb \
		databases/sqlite3 \
		devel/pcre

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--config=OpenBSD --no-tests --no-samples \
			--unbundled --include-path=${LOCALBASE}/include \
			--library-path=${LOCALBASE}/lib
MAKE_FLAGS =		ODBCLIBDIR=${LOCALBASE}/lib
MAKE_ENV +=		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
TEST_TARGET =		tests

pre-configure:
	cp ${FILESDIR}/OpenBSD ${WRKSRC}/build/config/
	echo ${SHLIB_VERSION} > ${WRKSRC}/libversion

.include <bsd.port.mk>
