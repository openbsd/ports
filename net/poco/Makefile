# $OpenBSD: Makefile,v 1.15 2014/09/13 18:09:21 brad Exp $

COMMENT =	POCO C++ libraries for network based applications

VERSION =	1.4.6p1
DISTNAME =	poco-${VERSION}-all
PKGNAME =	poco-${VERSION:S/p/pl/}
REVISION =	0
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
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m pthread ssl stdc++ iodbc iodbcinst mysqlclient
WANTLIB += expat pcre sqlite3 z

LIB_DEPENDS =	databases/iodbc \
		databases/mariadb \
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
