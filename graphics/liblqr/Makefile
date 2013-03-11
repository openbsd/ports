# $OpenBSD: Makefile,v 1.9 2013/03/11 11:10:53 espie Exp $

SHARED_ONLY =			Yes

COMMENT = 			seam-carving smart rescale library
CATEGORIES =			graphics devel

HOMEPAGE = 			http://liblqr.wikidot.com/
DISTNAME = 			liblqr-1-0.4.1
PKGNAME = 			liblqr-0.4.1
MASTER_SITES =			${HOMEPAGE}local--files/en:download-page/
EXTRACT_SUFX =			.tar.bz2

# Library is LGPLv3, examples are GPLv3
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =		gnu
USE_LIBTOOL =			Yes
SEPARATE_BUILD =		simple
#CONFIGURE_ENV =			CFLAGS="${CFLAGS} ${COPTS}"

SHARED_LIBS +=	lqr-1           1.0           # .0.0

MODULES =			devel/gettext
LIB_DEPENDS =			devel/glib2
WANTLIB +=			m pthread pcre glib-2.0

CMAKE_MODULES_DIR ?=		${PREFIX}/share/cmake/Modules
CMAKE_MODULE =			FindLqr-1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cmake/Modules
	${INSTALL_DATA} ${FILESDIR}/${CMAKE_MODULE}.cmake ${CMAKE_MODULES_DIR}

.include <bsd.port.mk>
