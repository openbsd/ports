# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:10 espie Exp $

COMMENT-main =		library to handle Apple Property List format
COMMENT-python =	python bindings for libplist

SHARED_ONLY =		Yes

VERSION =		1.4
DISTNAME =		libplist-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-plist-${VERSION}

REVISION-main =		1
REVISION-python =	1

SHARED_LIBS +=		plist		0.0 # 1.1
SHARED_LIBS +=		plist++		0.0 # 1.1

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
