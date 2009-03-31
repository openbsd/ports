# $OpenBSD: Makefile,v 1.26 2009/03/31 11:37:20 wilfried Exp $

SHARED_ONLY =		Yes

COMMENT-main =		C++ API for MySQL
COMMENT-docs =		C++ API for MySQL documentation

VERSION =		3.0.9
DISTNAME =		mysql++-${VERSION}
PKGNAME-main =		${DISTNAME}
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

post-install:
	@mv ${PREFIX}/lib/libmysqlpp.so.${VERSION} ${PREFIX}/lib/libmysqlpp.so.${LIBmysqlpp_VERSION}
	@rm -f ${PREFIX}/lib/libmysqlpp.so.3
	@rm -f ${PREFIX}/lib/libmysqlpp.so
.for dir in refman userman
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql++/${dir}/
	${INSTALL_DATA} ${WRKSRC}/doc/html/${dir}/* ${PREFIX}/share/doc/mysql++/${dir}/
.endfor

.include <bsd.port.mk>
