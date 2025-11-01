COMMENT=		HTTP and WebDAV client library, with C interface

DISTNAME=		neon-0.35.0

SHARED_LIBS +=  neon                 31.5     # 34.2

CATEGORIES=		net www devel

HOMEPAGE=		https://notroj.github.io/neon/

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl duktape expat ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB += pcre2-8 proxy pthread ssl z

COMPILER=		base-clang ports-gcc base-gcc

SITES=			https://notroj.github.io/neon/

BUILD_DEPENDS=		textproc/xmlto

LIB_DEPENDS=		net/libproxy

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_CERTUTIL="" \
			ac_cv_path_PK12UTIL=""

CONFIGURE_ARGS=		--with-ca-bundle=/etc/ssl/cert.pem \
			--with-ssl=openssl \
			--with-expat \
			--without-pakchois \
			--enable-nls

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/neon/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

TEST_DEPENDS=	security/openssl/3.5 \
		sysutils/coreutils
TEST_FLAGS=	-C ${WRKSRC}/test OPENSSL=eopenssl35
pre-test:
	@ln -fs ${LOCALBASE}/bin/gdate ${WRKDIR}/bin/date

.include <bsd.port.mk>
