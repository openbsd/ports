# $OpenBSD: Makefile,v 1.6 2013/04/12 17:12:55 mglocker Exp $

COMMENT-main =		library to handle Apple Property List format
COMMENT-python =	python bindings for libplist

SHARED_ONLY =		Yes

VERSION =		1.10
SUBST_VARS +=		VERSION
DISTNAME =		libplist-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-plist-${VERSION}

SHARED_LIBS +=		plist		1.0 # 1.1
SHARED_LIBS +=		plist++		1.0 # 1.1

CATEGORIES =		devel audio

HOMEPAGE =		http://www.libimobiledevice.org

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/downloads/
EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES =	-main -python

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/swig
LIB_DEPENDS-python =	${LIB_DEPENDS} \
			${BUILD_PKGPATH},-main
LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

WANTLIB +=		glib-2.0 m stdc++ xml2
WANTLIB-main += 	${WANTLIB} c pthread
WANTLIB-python += 	${WANTLIB} plist plist++ python${MODPY_VERSION}

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread"

.include <bsd.port.mk>
