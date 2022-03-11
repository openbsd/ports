COMMENT =		library to handle Apple Property List format

DISTNAME =		libplist-1.12
REVISION =		2

SHARED_LIBS +=  plist                2.0      # 3.0
SHARED_LIBS +=  plist++              2.0      # 3.0

CATEGORIES =		devel audio

HOMEPAGE =		https://www.libimobiledevice.org

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c iconv lzma m xml2 z

# for 2.2.0, tar.bz2 (proper tarball) now at github
MASTER_SITES =		${HOMEPAGE}/downloads/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		converters/libiconv \
			textproc/libxml

COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--without-cython

.include <bsd.port.mk>
