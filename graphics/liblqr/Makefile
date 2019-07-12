# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:02 sthen Exp $

COMMENT = 			seam-carving smart rescale library
CATEGORIES =			graphics devel

HOMEPAGE = 			http://liblqr.wikidot.com/
DISTNAME = 			liblqr-1-0.4.2
PKGNAME = 			liblqr-0.4.2
MASTER_SITES =			${HOMEPAGE}local--files/en:download-page/
EXTRACT_SUFX =			.tar.bz2
REVISION =                      0

# Library is LGPLv3, examples are GPLv3
PERMIT_PACKAGE =		Yes

WANTLIB =  glib-2.0 iconv intl m pcre pthread

CONFIGURE_STYLE =		gnu
SEPARATE_BUILD =		simple

SHARED_LIBS +=	lqr-1           1.0           # .0.0

LIB_DEPENDS =			devel/glib2

CMAKE_MODULES_DIR ?=		${PREFIX}/share/cmake/Modules
CMAKE_MODULE =			FindLqr-1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cmake/Modules
	${INSTALL_DATA} ${FILESDIR}/${CMAKE_MODULE}.cmake ${CMAKE_MODULES_DIR}

.include <bsd.port.mk>
