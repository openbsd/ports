COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-8.20
REVISION=	5

SHARED_LIBS +=  openconnect               4.5 # 5.6

CATEGORIES=	net

HOMEPAGE=	https://www.infradead.org/openconnect/

# LGPLv2.1 only
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec brotlienc c ffi gmp gnutls hogweed iconv
WANTLIB += idn2 intl lz4 lzma m nettle p11-kit pthread tasn1 unistring
WANTLIB += xml2 z zstd

COMPILER =	base-clang ports-gcc base-gcc

SITES=		ftp://ftp.infradead.org/pub/openconnect/

FLAVORS=	light
FLAVOR?=

MODULES=	lang/python
MODPY_RUNDEP=	No

# groff is used to format html during build, USE_GROFF not needed
# XXX can probably convert to using mandoc?
BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/groff
RUN_DEPENDS=	net/vpnc-scripts
LIB_DEPENDS=	archivers/lz4 \
		devel/gettext,-runtime \
		security/gnutls>=3.6.13 \
		textproc/libxml
# also wants socket_wrapper and uid_wrapper from cwrap to be present at
# configure time (in openbsd-wip); tests currently failing, in need of
# further work
TEST_DEPENDS=	net/ocserv

FAKE_FLAGS=	bashcompletiondir=${PREFIX}/share/examples/openconnect/bash_completion.d \
		pkgdatadir=${PREFIX}/share/doc/openconnect

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ARGS=		--with-vpnc-script=${SYSCONFDIR}/vpnc-script \
			--without-stoken
# make sure libstoken isn't picked up automatically if we import it.

.if ${FLAVOR:Mlight}
CONFIGURE_ARGS+= --without-libpcsclite \
		--without-libproxy \
		--without-libpskc
.else
WANTLIB += ssl ltdl pcsclite proxy pskc xmlsec1 xslt
WANTLIB += crypto curl duktape gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls pcre2-8
LIB_DEPENDS+=	net/libproxy>=0.4.6p7 \
		security/oath-toolkit,-pskc \
		security/pcsc-lite
.endif

post-install:
	rm -r ${PREFIX}/libexec/openconnect

pre-test:
	perl -pi -e s,/usr/sbin/ocserv,${LOCALBASE}/sbin/ocserv,g \
	    ${WRKSRC}/tests/common.sh

.include <bsd.port.mk>
