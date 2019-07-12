# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:40 sthen Exp $

COMMENT-main =		library to handle Apple Property List format
COMMENT-python =	python bindings for libplist

VERSION =		1.12
SUBST_VARS +=		VERSION
DISTNAME =		libplist-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-plist-${VERSION}
REVISION-main =		1
REVISION-python =	1

SHARED_LIBS +=  plist                2.0      # 3.0
SHARED_LIBS +=  plist++              2.0      # 3.0

CATEGORIES =		devel audio

HOMEPAGE =		http://www.libimobiledevice.org

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/downloads/
EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES =	-main -python

MODULES =		lang/python

BUILD_DEPENDS=		lang/cython

LIB_DEPENDS-python =	${LIB_DEPENDS} \
			${BUILD_PKGPATH},-main
LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

WANTLIB +=		iconv lzma m pthread xml2 z
WANTLIB-main += 	${WANTLIB} c ${COMPILER_LIBCXX}
WANTLIB-python += 	${WANTLIB} plist util python${MODPY_VERSION}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
