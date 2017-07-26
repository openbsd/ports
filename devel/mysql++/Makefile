# $OpenBSD: Makefile,v 1.46 2017/07/26 22:45:18 sthen Exp $

ONLY_FOR_ARCHS=		${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT =		C++ API for MySQL

DISTNAME =		mysql++-3.1.0
REVISION =		7

SHARED_LIBS += mysqlpp	4.0	# 3

CATEGORIES =		devel

HOMEPAGE =		http://tangentsoft.net/mysql++/

# LPGLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m mysqlclient ${COMPILER_LIBCXX}

MASTER_SITES =		${HOMEPAGE}releases/

LIB_DEPENDS =		databases/mariadb

NO_TEST =		Yes
USE_GMAKE =		Yes
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	autoconf

# compile against real libmysqlpp version
MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS}" \
		DLLIMP_SUFFIX=so.${LIBmysqlpp_VERSION} \
		__mysqlpp___targetsuf2=.so.${LIBmysqlpp_VERSION} \
		__mysqlpp___targetsuf3=.so.${LIBmysqlpp_VERSION} \
		__mysqlpp___so_symlinks_cmd='' \
		__mysqlpp___so_symlinks_inst_cmd=''

post-install:
.for dir in refman userman
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/${dir}/
	${INSTALL_DATA} ${WRKSRC}/doc/html/${dir}/* ${PREFIX}/share/doc/mysql++/${dir}/
.endfor

.include <bsd.port.mk>
