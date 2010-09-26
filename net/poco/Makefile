# $OpenBSD: Makefile,v 1.2 2010/09/26 15:10:53 ajacoutot Exp $

COMMENT =	POCO C++ libraries for network based applications

VERSION =	1.3.6p2
DISTNAME =	poco-${VERSION}-all
PKGNAME =	poco-${VERSION:S/p/./g}
REVISION =	0
CATEGORIES =	net devel
SHLIB_VERSION =	0.0
.for _lib in PocoMySQL PocoNetSSL PocoODBC PocoSQLite PocoZip \
	PocoCrypto PocoData PocoFoundation PocoNet PocoUtil PocoXML
SHARED_LIBS +=	${_lib} ${SHLIB_VERSION}
.endfor

HOMEPAGE =	http://pocoproject.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=poco/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Boost software license
PERMIT_PACKAGE_CDROM =  	Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += c crypto m pthread ssl stdc++ iodbc iodbcinst mysqlclient
WANTLIB += expat pcre sqlite3 z
LIB_DEPENDS =	::databases/iodbc \
		::databases/mysql \
		::databases/sqlite3 \
		::devel/pcre

USE_GMAKE =		Yes
SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--config=OpenBSD --no-tests --no-samples \
			--unbundled --include-path=${LOCALBASE}/include \
			--library-path=${LOCALBASE}/lib
MAKE_FLAGS =		ODBCLIBDIR=${LOCALBASE}/lib
MAKE_ENV += 		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
REGRESS_TARGET =	tests

pre-configure:
	cp ${FILESDIR}/OpenBSD ${WRKSRC}/build/config/
	echo ${SHLIB_VERSION} > ${WRKSRC}/libversion

.include <bsd.port.mk>
