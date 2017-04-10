# $OpenBSD: Makefile,v 1.10 2017/04/10 11:45:26 sthen Exp $

COMMENT-main =		library to handle Apple Property List format
COMMENT-python =	python bindings for libplist

VERSION =		1.12
SUBST_VARS +=		VERSION
DISTNAME =		libplist-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-plist-${VERSION}

SHARED_LIBS +=  plist                2.0      # 3.0
SHARED_LIBS +=  plist++              2.0      # 3.0

CATEGORIES =		devel audio

HOMEPAGE =		http://www.libimobiledevice.org

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

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
WANTLIB-main += 	${WANTLIB} c ${LIBCXX}
WANTLIB-python += 	${WANTLIB} plist util python${MODPY_VERSION}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
