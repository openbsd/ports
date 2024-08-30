COMMENT =	successor of GNU Wget, a file and website downloader

DISTNAME =	wget2-2.1.0
SHARED_LIBS +=	wget 0.0	# 2.0
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	https://gitlab.com/gnuwget/wget2

# GPLv3+ wget2, LGPLv3+ libwget
PERMIT_PACKAGE =	Yes

SITES =	${SITE_GNU:=wget/}

WANTLIB += assuan brotlicommon brotlidec bz2 c crypto gpg-error
WANTLIB += gpgme iconv idn2 intl lz lzma m nghttp2 pcre2-8 psl
WANTLIB += pthread ssl unistring z zstd

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		archivers/brotli \
			archivers/bzip2 \
			archivers/lzip/lzlib \
			archivers/xz \
			archivers/zstd \
			converters/libunistring \
			devel/gettext,-runtime \
			devel/libidn2 \
			devel/pcre2 \
			net/libpsl \
			security/gpgme \
			security/libassuan \
			www/nghttp2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doc \
			--with-bzip2=yes \
			--with-lzma=yes \
			--with-ssl=openssl \
			--without-libdane \
			--without-libhsts \
			--without-libmicrohttpd
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/build-aux

.include <bsd.port.mk>
