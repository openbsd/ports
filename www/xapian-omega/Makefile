COMMENT=	web search application

V=		2.0.0
PORTROACH=	limitw:1,even
DISTNAME=	xapian-omega-${V}

CATEGORIES=	www textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Lerc X11 Xau Xdmcp Xext Xrender archive assuan b2 bz2
WANTLIB += c cairo crypto curl expat ffi fontconfig freetype gif
WANTLIB += gio-2.0 glib-2.0 gmime-3.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv icudata icuuc idn2
WANTLIB += intl jpeg lcms2 leptonica lz4 lzma m magic nghttp2
WANTLIB += nghttp3 ngtcp2 ngtcp2_crypto_libressl openjp2 pcre2-8
WANTLIB += pixman-1 png poppler poppler-glib ssl tesseract tiff
WANTLIB += unistring webp webpmux xapian xcb xcb-render xcb-shm
WANTLIB += z zstd

SITES=		https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# C++17 minimum
COMPILER=       base-clang ports-gcc

LIB_DEPENDS=	converters/libiconv \
		databases/xapian-core>=${V} \
		devel/pcre2 \
		devel/libmagic \
		graphics/tesseract/tesseract \
		mail/gmime30 \
		print/poppler

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/xapian-omega \
		pkglibbindir=${PREFIX}/libexec/xapian-omega/cgi-bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/godmode ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/opensearch ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/query ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/topterms ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/xml ${PREFIX}/share/omega/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/omega/templates/inc
	${INSTALL_DATA} ${WRKBUILD}/templates/inc/* ${PREFIX}/share/omega/templates/inc

.include <bsd.port.mk>
