# $OpenBSD: Makefile,v 1.27 2009/11/13 20:41:43 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT-main =		C++ API for MySQL
COMMENT-docs =		C++ API for MySQL documentation

VERSION =		3.0.9
DISTNAME =		mysql++-${VERSION}
PKGNAME-main =		${DISTNAME}p0
PKGNAME-docs =		mysql++-docs-${VERSION}
SHARED_LIBS += mysqlpp	4.0	# 3
CATEGORIES =		devel

HOMEPAGE =		http://tangentsoft.net/mysql++/

MAINTAINER =		Peter Stromberg <wilfried@openbsd.org>

# LPGL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}releases/

MULTI_PACKAGES =	-main -docs

LIB_DEPENDS-main =	mysqlclient::databases/mysql
WANTLIB-main =		m
PKG_ARCH-docs =		*

NO_REGRESS =		Yes
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
